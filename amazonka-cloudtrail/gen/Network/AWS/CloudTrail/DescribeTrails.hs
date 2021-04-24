{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.DescribeTrails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves settings for one or more trails associated with the current region for your account.
module Network.AWS.CloudTrail.DescribeTrails
  ( -- * Creating a Request
    describeTrails,
    DescribeTrails,

    -- * Request Lenses
    dtTrailNameList,
    dtIncludeShadowTrails,

    -- * Destructuring the Response
    describeTrailsResponse,
    DescribeTrailsResponse,

    -- * Response Lenses
    dtrrsTrailList,
    dtrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Returns information about the trail.
--
--
--
-- /See:/ 'describeTrails' smart constructor.
data DescribeTrails = DescribeTrails'
  { _dtTrailNameList ::
      !(Maybe [Text]),
    _dtIncludeShadowTrails :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTrails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtTrailNameList' - Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@  If an empty list is specified, information for the trail in the current region is returned.     * If an empty list is specified and @IncludeShadowTrails@ is false, then information for all trails in the current region is returned.     * If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.
--
-- * 'dtIncludeShadowTrails' - Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region, or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account and region replication trails will not be returned. The default is true.
describeTrails ::
  DescribeTrails
describeTrails =
  DescribeTrails'
    { _dtTrailNameList = Nothing,
      _dtIncludeShadowTrails = Nothing
    }

-- | Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@  If an empty list is specified, information for the trail in the current region is returned.     * If an empty list is specified and @IncludeShadowTrails@ is false, then information for all trails in the current region is returned.     * If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.
dtTrailNameList :: Lens' DescribeTrails [Text]
dtTrailNameList = lens _dtTrailNameList (\s a -> s {_dtTrailNameList = a}) . _Default . _Coerce

-- | Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region, or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account and region replication trails will not be returned. The default is true.
dtIncludeShadowTrails :: Lens' DescribeTrails (Maybe Bool)
dtIncludeShadowTrails = lens _dtIncludeShadowTrails (\s a -> s {_dtIncludeShadowTrails = a})

instance AWSRequest DescribeTrails where
  type Rs DescribeTrails = DescribeTrailsResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrailsResponse'
            <$> (x .?> "trailList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrails

instance NFData DescribeTrails

instance ToHeaders DescribeTrails where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.DescribeTrails" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTrails where
  toJSON DescribeTrails' {..} =
    object
      ( catMaybes
          [ ("trailNameList" .=) <$> _dtTrailNameList,
            ("includeShadowTrails" .=)
              <$> _dtIncludeShadowTrails
          ]
      )

instance ToPath DescribeTrails where
  toPath = const "/"

instance ToQuery DescribeTrails where
  toQuery = const mempty

-- | Returns the objects or data listed below if successful. Otherwise, returns an error.
--
--
--
-- /See:/ 'describeTrailsResponse' smart constructor.
data DescribeTrailsResponse = DescribeTrailsResponse'
  { _dtrrsTrailList ::
      !(Maybe [Trail]),
    _dtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTrailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsTrailList' - The list of trail objects. Trail objects with string values are only returned if values for the objects exist in a trail's configuration. For example, @SNSTopicName@ and @SNSTopicARN@ are only returned in results if a trail is configured to send SNS notifications. Similarly, @KMSKeyId@ only appears in results if a trail's log files are encrypted with AWS KMS-managed keys.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTrailsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTrailsResponse
describeTrailsResponse pResponseStatus_ =
  DescribeTrailsResponse'
    { _dtrrsTrailList = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | The list of trail objects. Trail objects with string values are only returned if values for the objects exist in a trail's configuration. For example, @SNSTopicName@ and @SNSTopicARN@ are only returned in results if a trail is configured to send SNS notifications. Similarly, @KMSKeyId@ only appears in results if a trail's log files are encrypted with AWS KMS-managed keys.
dtrrsTrailList :: Lens' DescribeTrailsResponse [Trail]
dtrrsTrailList = lens _dtrrsTrailList (\s a -> s {_dtrrsTrailList = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTrailsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTrailsResponse
