/* Auto-generated by genmsg_java.py for file ../../hello_java/msg/TestBadDataTypes.msg */

package ros.pkg.hello_java.msg;

import java.nio.ByteBuffer;

public class TestBadDataTypes extends ros.communication.Message {

  public ros.pkg.std_msgs.msg.Byte[] Byte_f = new ros.pkg.std_msgs.msg.Byte[2];
  public ros.pkg.std_msgs.msg.ByteMultiArray[] ByteMultiArray_f = new ros.pkg.std_msgs.msg.ByteMultiArray[1];

  public TestBadDataTypes() {

    for(int __i=0; __i<2; __i++) {
      Byte_f[__i] = new ros.pkg.std_msgs.msg.Byte();
    }

    for(int __i=0; __i<1; __i++) {
      ByteMultiArray_f[__i] = new ros.pkg.std_msgs.msg.ByteMultiArray();
    }
  }

  public static java.lang.String __s_getDataType() { return "hello_java/TestBadDataTypes"; }
  public java.lang.String getDataType() { return __s_getDataType(); }
  public static java.lang.String __s_getMD5Sum() { return "f0fea41d38f14ed745582d619f53bcd0"; }
  public java.lang.String getMD5Sum() { return __s_getMD5Sum(); }
  public static java.lang.String __s_getMessageDefinition() { return "# Unfortunately, can't test these fully because roscpp message generation\n" +
"# is broken. \n" +
"\n" +
"std_msgs/Byte[2] Byte_f\n" +
"std_msgs/ByteMultiArray[1] ByteMultiArray_f\n" +
"\n" +
"================================================================================\n" +
"MSG: std_msgs/Byte\n" +
"byte data\n" +
"\n" +
"================================================================================\n" +
"MSG: std_msgs/ByteMultiArray\n" +
"# Please look at the MultiArrayLayout message definition for\n" +
"# documentation on all multiarrays.\n" +
"\n" +
"MultiArrayLayout  layout        # specification of data layout\n" +
"byte[]            data          # array of data\n" +
"\n" +
"\n" +
"================================================================================\n" +
"MSG: std_msgs/MultiArrayLayout\n" +
"# The multiarray declares a generic multi-dimensional array of a\n" +
"# particular data type.  Dimensions are ordered from outer most\n" +
"# to inner most.\n" +
"\n" +
"MultiArrayDimension[] dim # Array of dimension properties\n" +
"uint32 data_offset        # padding elements at front of data\n" +
"\n" +
"# Accessors should ALWAYS be written in terms of dimension stride\n" +
"# and specified outer-most dimension first.\n" +
"# \n" +
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n" +
"#\n" +
"# A standard, 3-channel 640x480 image with interleaved color channels\n" +
"# would be specified as:\n" +
"#\n" +
"# dim[0].label  = \"height\"\n" +
"# dim[0].size   = 480\n" +
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n" +
"# dim[1].label  = \"width\"\n" +
"# dim[1].size   = 640\n" +
"# dim[1].stride = 3*640 = 1920\n" +
"# dim[2].label  = \"channel\"\n" +
"# dim[2].size   = 3\n" +
"# dim[2].stride = 3\n" +
"#\n" +
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n" +
"\n" +
"================================================================================\n" +
"MSG: std_msgs/MultiArrayDimension\n" +
"string label   # label of given dimension\n" +
"uint32 size    # size of given dimension (in type units)\n" +
"uint32 stride  # stride of given dimension\n" +
""; }
  public java.lang.String getMessageDefinition() { return __s_getMessageDefinition(); }

  public TestBadDataTypes clone() {
    TestBadDataTypes c = new TestBadDataTypes();
    c.deserialize(serialize(0));
    return c;
  }

  public void setTo(ros.communication.Message m) {
    deserialize(m.serialize(0));
  }

  public int serializationLength() {
    int __l = 0;

    for(ros.pkg.std_msgs.msg.Byte val : Byte_f) {
      __l += val.serializationLength();
    }

    for(ros.pkg.std_msgs.msg.ByteMultiArray val : ByteMultiArray_f) {
      __l += val.serializationLength();
    }
    return __l;
  }

  public void serialize(ByteBuffer bb, int seq) {

    for(ros.pkg.std_msgs.msg.Byte val : Byte_f) {
      val.serialize(bb, seq);
    }

    for(ros.pkg.std_msgs.msg.ByteMultiArray val : ByteMultiArray_f) {
      val.serialize(bb, seq);
    }
  }

  public void deserialize(ByteBuffer bb) {

    int __Byte_f_len = Byte_f.length;;
    Byte_f = new ros.pkg.std_msgs.msg.Byte[__Byte_f_len];
    for(int __i=0; __i<__Byte_f_len; __i++) {
      ros.pkg.std_msgs.msg.Byte __tmp = new ros.pkg.std_msgs.msg.Byte();
      __tmp.deserialize(bb);
      Byte_f[__i] = __tmp;
    }

    int __ByteMultiArray_f_len = ByteMultiArray_f.length;;
    ByteMultiArray_f = new ros.pkg.std_msgs.msg.ByteMultiArray[__ByteMultiArray_f_len];
    for(int __i=0; __i<__ByteMultiArray_f_len; __i++) {
      ros.pkg.std_msgs.msg.ByteMultiArray __tmp = new ros.pkg.std_msgs.msg.ByteMultiArray();
      __tmp.deserialize(bb);
      ByteMultiArray_f[__i] = __tmp;
    }
  }

  @SuppressWarnings("all")
  public boolean equals(Object o) {
    if(!(o instanceof TestBadDataTypes))
      return false;
    TestBadDataTypes other = (TestBadDataTypes) o;
    return
      java.util.Arrays.equals(Byte_f, other.Byte_f) &&
      java.util.Arrays.equals(ByteMultiArray_f, other.ByteMultiArray_f) &&
      true;
  }

  @SuppressWarnings("all")
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    long tmp;
    result = prime * result + java.util.Arrays.hashCode(this.Byte_f);
    result = prime * result + java.util.Arrays.hashCode(this.ByteMultiArray_f);
    return result;
  }
} // class TestBadDataTypes

