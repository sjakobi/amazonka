{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerAttribute where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a load balancer attribute.
--
--
--
-- /See:/ 'loadBalancerAttribute' smart constructor.
data LoadBalancerAttribute = LoadBalancerAttribute'
  { _lbaKey ::
      !(Maybe Text),
    _lbaValue :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LoadBalancerAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbaKey' - The name of the attribute. The following attribute is supported by all load balancers:     * @deletion_protection.enabled@ - Indicates whether deletion protection is enabled. The value is @true@ or @false@ . The default is @false@ . The following attributes are supported by both Application Load Balancers and Network Load Balancers:     * @access_logs.s3.enabled@ - Indicates whether access logs are enabled. The value is @true@ or @false@ . The default is @false@ .     * @access_logs.s3.bucket@ - The name of the S3 bucket for the access logs. This attribute is required if access logs are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permissions to write to the bucket.     * @access_logs.s3.prefix@ - The prefix for the location in the S3 bucket for the access logs. The following attributes are supported by only Application Load Balancers:     * @idle_timeout.timeout_seconds@ - The idle timeout value, in seconds. The valid range is 1-4000 seconds. The default is 60 seconds.     * @routing.http.desync_mitigation_mode@ - Determines how the load balancer handles requests that might pose a security risk to your application. The possible values are @monitor@ , @defensive@ , and @strictest@ . The default is @defensive@ .     * @routing.http.drop_invalid_header_fields.enabled@ - Indicates whether HTTP headers with invalid header fields are removed by the load balancer (@true@ ) or routed to targets (@false@ ). The default is @false@ .     * @routing.http2.enabled@ - Indicates whether HTTP/2 is enabled. The value is @true@ or @false@ . The default is @true@ . Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens.     * @waf.fail_open.enabled@ - Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. The value is @true@ or @false@ . The default is @false@ . The following attribute is supported by Network Load Balancers and Gateway Load Balancers:     * @load_balancing.cross_zone.enabled@ - Indicates whether cross-zone load balancing is enabled. The value is @true@ or @false@ . The default is @false@ .
--
-- * 'lbaValue' - The value of the attribute.
loadBalancerAttribute ::
  LoadBalancerAttribute
loadBalancerAttribute =
  LoadBalancerAttribute'
    { _lbaKey = Nothing,
      _lbaValue = Nothing
    }

-- | The name of the attribute. The following attribute is supported by all load balancers:     * @deletion_protection.enabled@ - Indicates whether deletion protection is enabled. The value is @true@ or @false@ . The default is @false@ . The following attributes are supported by both Application Load Balancers and Network Load Balancers:     * @access_logs.s3.enabled@ - Indicates whether access logs are enabled. The value is @true@ or @false@ . The default is @false@ .     * @access_logs.s3.bucket@ - The name of the S3 bucket for the access logs. This attribute is required if access logs are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permissions to write to the bucket.     * @access_logs.s3.prefix@ - The prefix for the location in the S3 bucket for the access logs. The following attributes are supported by only Application Load Balancers:     * @idle_timeout.timeout_seconds@ - The idle timeout value, in seconds. The valid range is 1-4000 seconds. The default is 60 seconds.     * @routing.http.desync_mitigation_mode@ - Determines how the load balancer handles requests that might pose a security risk to your application. The possible values are @monitor@ , @defensive@ , and @strictest@ . The default is @defensive@ .     * @routing.http.drop_invalid_header_fields.enabled@ - Indicates whether HTTP headers with invalid header fields are removed by the load balancer (@true@ ) or routed to targets (@false@ ). The default is @false@ .     * @routing.http2.enabled@ - Indicates whether HTTP/2 is enabled. The value is @true@ or @false@ . The default is @true@ . Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens.     * @waf.fail_open.enabled@ - Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. The value is @true@ or @false@ . The default is @false@ . The following attribute is supported by Network Load Balancers and Gateway Load Balancers:     * @load_balancing.cross_zone.enabled@ - Indicates whether cross-zone load balancing is enabled. The value is @true@ or @false@ . The default is @false@ .
lbaKey :: Lens' LoadBalancerAttribute (Maybe Text)
lbaKey = lens _lbaKey (\s a -> s {_lbaKey = a})

-- | The value of the attribute.
lbaValue :: Lens' LoadBalancerAttribute (Maybe Text)
lbaValue = lens _lbaValue (\s a -> s {_lbaValue = a})

instance FromXML LoadBalancerAttribute where
  parseXML x =
    LoadBalancerAttribute'
      <$> (x .@? "Key") <*> (x .@? "Value")

instance Hashable LoadBalancerAttribute

instance NFData LoadBalancerAttribute

instance ToQuery LoadBalancerAttribute where
  toQuery LoadBalancerAttribute' {..} =
    mconcat ["Key" =: _lbaKey, "Value" =: _lbaValue]
