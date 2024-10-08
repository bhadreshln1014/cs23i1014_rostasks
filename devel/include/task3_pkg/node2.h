// Generated by gencpp from file task3_pkg/node2.msg
// DO NOT EDIT!


#ifndef TASK3_PKG_MESSAGE_NODE2_H
#define TASK3_PKG_MESSAGE_NODE2_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace task3_pkg
{
template <class ContainerAllocator>
struct node2_
{
  typedef node2_<ContainerAllocator> Type;

  node2_()
    : data1(0)
    , data2()  {
    }
  node2_(const ContainerAllocator& _alloc)
    : data1(0)
    , data2(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _data1_type;
  _data1_type data1;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data2_type;
  _data2_type data2;





  typedef boost::shared_ptr< ::task3_pkg::node2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::task3_pkg::node2_<ContainerAllocator> const> ConstPtr;

}; // struct node2_

typedef ::task3_pkg::node2_<std::allocator<void> > node2;

typedef boost::shared_ptr< ::task3_pkg::node2 > node2Ptr;
typedef boost::shared_ptr< ::task3_pkg::node2 const> node2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::task3_pkg::node2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::task3_pkg::node2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::task3_pkg::node2_<ContainerAllocator1> & lhs, const ::task3_pkg::node2_<ContainerAllocator2> & rhs)
{
  return lhs.data1 == rhs.data1 &&
    lhs.data2 == rhs.data2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::task3_pkg::node2_<ContainerAllocator1> & lhs, const ::task3_pkg::node2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace task3_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::task3_pkg::node2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task3_pkg::node2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task3_pkg::node2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task3_pkg::node2_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task3_pkg::node2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task3_pkg::node2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::task3_pkg::node2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43926191ad7dd73221b81d137aa19cb5";
  }

  static const char* value(const ::task3_pkg::node2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43926191ad7dd732ULL;
  static const uint64_t static_value2 = 0x21b81d137aa19cb5ULL;
};

template<class ContainerAllocator>
struct DataType< ::task3_pkg::node2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "task3_pkg/node2";
  }

  static const char* value(const ::task3_pkg::node2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::task3_pkg::node2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 data1\n"
"string data2\n"
;
  }

  static const char* value(const ::task3_pkg::node2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::task3_pkg::node2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data1);
      stream.next(m.data2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::task3_pkg::node2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::task3_pkg::node2_<ContainerAllocator>& v)
  {
    s << indent << "data1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.data1);
    s << indent << "data2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TASK3_PKG_MESSAGE_NODE2_H
