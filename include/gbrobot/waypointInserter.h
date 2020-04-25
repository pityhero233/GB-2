// Generated by gencpp from file gbrobot/waypointInserter.msg
// DO NOT EDIT!


#ifndef GBROBOT_MESSAGE_WAYPOINTINSERTER_H
#define GBROBOT_MESSAGE_WAYPOINTINSERTER_H

#include <ros/service_traits.h>


#include <gbrobot/waypointInserterRequest.h>
#include <gbrobot/waypointInserterResponse.h>


namespace gbrobot
{

struct waypointInserter
{

typedef waypointInserterRequest Request;
typedef waypointInserterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct waypointInserter
} // namespace gbrobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::gbrobot::waypointInserter > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::gbrobot::waypointInserter&) { return value(); }
};

template<>
struct DataType< ::gbrobot::waypointInserter > {
  static const char* value()
  {
    return "gbrobot/waypointInserter";
  }

  static const char* value(const ::gbrobot::waypointInserter&) { return value(); }
};


// service_traits::MD5Sum< ::gbrobot::waypointInserterRequest> should match 
// service_traits::MD5Sum< ::gbrobot::waypointInserter > 
template<>
struct MD5Sum< ::gbrobot::waypointInserterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::gbrobot::waypointInserter >::value();
  }
  static const char* value(const ::gbrobot::waypointInserterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::gbrobot::waypointInserterRequest> should match 
// service_traits::DataType< ::gbrobot::waypointInserter > 
template<>
struct DataType< ::gbrobot::waypointInserterRequest>
{
  static const char* value()
  {
    return DataType< ::gbrobot::waypointInserter >::value();
  }
  static const char* value(const ::gbrobot::waypointInserterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::gbrobot::waypointInserterResponse> should match 
// service_traits::MD5Sum< ::gbrobot::waypointInserter > 
template<>
struct MD5Sum< ::gbrobot::waypointInserterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::gbrobot::waypointInserter >::value();
  }
  static const char* value(const ::gbrobot::waypointInserterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::gbrobot::waypointInserterResponse> should match 
// service_traits::DataType< ::gbrobot::waypointInserter > 
template<>
struct DataType< ::gbrobot::waypointInserterResponse>
{
  static const char* value()
  {
    return DataType< ::gbrobot::waypointInserter >::value();
  }
  static const char* value(const ::gbrobot::waypointInserterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GBROBOT_MESSAGE_WAYPOINTINSERTER_H