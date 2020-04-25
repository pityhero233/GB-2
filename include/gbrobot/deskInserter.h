// Generated by gencpp from file gbrobot/deskInserter.msg
// DO NOT EDIT!


#ifndef GBROBOT_MESSAGE_DESKINSERTER_H
#define GBROBOT_MESSAGE_DESKINSERTER_H

#include <ros/service_traits.h>


#include <gbrobot/deskInserterRequest.h>
#include <gbrobot/deskInserterResponse.h>


namespace gbrobot
{

struct deskInserter
{

typedef deskInserterRequest Request;
typedef deskInserterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct deskInserter
} // namespace gbrobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::gbrobot::deskInserter > {
  static const char* value()
  {
    return "ed65048fee4c00c2db9c6f0e9a7771ee";
  }

  static const char* value(const ::gbrobot::deskInserter&) { return value(); }
};

template<>
struct DataType< ::gbrobot::deskInserter > {
  static const char* value()
  {
    return "gbrobot/deskInserter";
  }

  static const char* value(const ::gbrobot::deskInserter&) { return value(); }
};


// service_traits::MD5Sum< ::gbrobot::deskInserterRequest> should match 
// service_traits::MD5Sum< ::gbrobot::deskInserter > 
template<>
struct MD5Sum< ::gbrobot::deskInserterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::gbrobot::deskInserter >::value();
  }
  static const char* value(const ::gbrobot::deskInserterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::gbrobot::deskInserterRequest> should match 
// service_traits::DataType< ::gbrobot::deskInserter > 
template<>
struct DataType< ::gbrobot::deskInserterRequest>
{
  static const char* value()
  {
    return DataType< ::gbrobot::deskInserter >::value();
  }
  static const char* value(const ::gbrobot::deskInserterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::gbrobot::deskInserterResponse> should match 
// service_traits::MD5Sum< ::gbrobot::deskInserter > 
template<>
struct MD5Sum< ::gbrobot::deskInserterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::gbrobot::deskInserter >::value();
  }
  static const char* value(const ::gbrobot::deskInserterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::gbrobot::deskInserterResponse> should match 
// service_traits::DataType< ::gbrobot::deskInserter > 
template<>
struct DataType< ::gbrobot::deskInserterResponse>
{
  static const char* value()
  {
    return DataType< ::gbrobot::deskInserter >::value();
  }
  static const char* value(const ::gbrobot::deskInserterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GBROBOT_MESSAGE_DESKINSERTER_H