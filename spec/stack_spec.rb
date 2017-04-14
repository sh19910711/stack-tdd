require_relative '../lib/stack'

describe Stack do
  let(:stack) { Stack.new }

  describe '#empty?' do
    it { expect(stack.empty?).to be true }
    context 'push item' do
      before { stack.push 'item' }
      it { expect(stack.empty?).to be false }
    end
  end

  describe '#size' do
    it { expect(stack.size).to be 0 }
    context 'push item' do
      before { stack.push 'item' }
      it { expect(stack.size).to be 1 }
    end
  end

  describe '#push' do
    context 'push item' do
      before { stack.push 'myitem' }
      it { expect(stack.top).to eq 'myitem' }
    end
  end

  describe '#pop' do
    context 'empty stack' do
      it { expect { stack.pop }.to raise_error(EmptyStackException) }
    end

    context 'not empty stack' do
      before { stack.push 'myitem' }
      context 'after #pop' do
        before { stack.pop }
        it { expect(stack).to be_empty }
      end
    end
  end

  describe '#top' do
    context 'empty stack' do
      it { expect { stack.top }.to raise_error(EmptyStackException) }
    end

    context 'not empty stack' do
      before { stack.push 'myitem' }
      it { expect(stack.top).to eq 'myitem' }

      context 'after #top' do
        before { stack.top }
        it { expect(stack).to_not be_empty }
      end
    end
  end
end
