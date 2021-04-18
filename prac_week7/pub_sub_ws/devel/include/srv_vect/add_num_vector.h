// Generated by gencpp from file srv_vect/add_num_vector.msg
// DO NOT EDIT!


#ifndef SRV_VECT_MESSAGE_ADD_NUM_VECTOR_H
#define SRV_VECT_MESSAGE_ADD_NUM_VECTOR_H

#include <ros/service_traits.h>


#include <srv_vect/add_num_vectorRequest.h>
#include <srv_vect/add_num_vectorResponse.h>


namespace srv_vect
{

struct add_num_vector
{

typedef add_num_vectorRequest Request;
typedef add_num_vectorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct add_num_vector
} // namespace srv_vect


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::srv_vect::add_num_vector > {
  static const char* value()
  {
    return "0681f85c1862941ab79099dc09475177";
  }

  static const char* value(const ::srv_vect::add_num_vector&) { return value(); }
};

template<>
struct DataType< ::srv_vect::add_num_vector > {
  static const char* value()
  {
    return "srv_vect/add_num_vector";
  }

  static const char* value(const ::srv_vect::add_num_vector&) { return value(); }
};


// service_traits::MD5Sum< ::srv_vect::add_num_vectorRequest> should match
// service_traits::MD5Sum< ::srv_vect::add_num_vector >
template<>
struct MD5Sum< ::srv_vect::add_num_vectorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::srv_vect::add_num_vector >::value();
  }
  static const char* value(const ::srv_vect::add_num_vectorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::srv_vect::add_num_vectorRequest> should match
// service_traits::DataType< ::srv_vect::add_num_vector >
template<>
struct DataType< ::srv_vect::add_num_vectorRequest>
{
  static const char* value()
  {
    return DataType< ::srv_vect::add_num_vector >::value();
  }
  static const char* value(const ::srv_vect::add_num_vectorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::srv_vect::add_num_vectorResponse> should match
// service_traits::MD5Sum< ::srv_vect::add_num_vector >
template<>
struct MD5Sum< ::srv_vect::add_num_vectorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::srv_vect::add_num_vector >::value();
  }
  static const char* value(const ::srv_vect::add_num_vectorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::srv_vect::add_num_vectorResponse> should match
// service_traits::DataType< ::srv_vect::add_num_vector >
template<>
struct DataType< ::srv_vect::add_num_vectorResponse>
{
  static const char* value()
  {
    return DataType< ::srv_vect::add_num_vector >::value();
  }
  static const char* value(const ::srv_vect::add_num_vectorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SRV_VECT_MESSAGE_ADD_NUM_VECTOR_H