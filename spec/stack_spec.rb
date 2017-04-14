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
      it { expect(stack.top).to be 'myitem' }
    end
  end

  describe '#pop' do
    context 'empty stack' do
      it { expect { stack.pop }.to raise_error(EmptyStackException) }
    end

    context 'not empty stack' do
      before { stack.push 'myitem' }
      context 'pop item' do
        before { stack.pop }
        it { expect(stack.empty?).to be true }
      end
    end
  end

  describe '#top' do
    context 'empty stack' do
      it { expect { stack.top }.to raise_error(EmptyStackException) }
    end

    context 'not empty stack' do
      before { stack.push 'myitem' }
      it { expect(stack.top).to be 'myitem' }

      context 'after #top' do
        before { stack.top }
        it { expect(stack.size).to be 1 }
      end
    end
  end
end
