using NUnit.Framework;

namespace ClassLib.Test
{
    public class Tests
    {
        [Test]
        public void Test1()
        {
            var class1 = new Class1();
            var expected = 2;
            var actual = class1.Add(1, 1);
            Assert.AreEqual(expected, actual);
        }
    }
}