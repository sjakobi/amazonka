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
-- Module      : Network.AWS.SES.DescribeConfigurationSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the specified configuration set. For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DescribeConfigurationSet
  ( -- * Creating a Request
    describeConfigurationSet,
    DescribeConfigurationSet,

    -- * Request Lenses
    dcsConfigurationSetAttributeNames,
    dcsConfigurationSetName,

    -- * Destructuring the Response
    describeConfigurationSetResponse,
    DescribeConfigurationSetResponse,

    -- * Response Lenses
    dcsrrsTrackingOptions,
    dcsrrsDeliveryOptions,
    dcsrrsReputationOptions,
    dcsrrsEventDestinations,
    dcsrrsConfigurationSet,
    dcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to return the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'describeConfigurationSet' smart constructor.
data DescribeConfigurationSet = DescribeConfigurationSet'
  { _dcsConfigurationSetAttributeNames ::
      !( Maybe
           [ConfigurationSetAttribute]
       ),
    _dcsConfigurationSetName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConfigurationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsConfigurationSetAttributeNames' - A list of configuration set attributes to return.
--
-- * 'dcsConfigurationSetName' - The name of the configuration set to describe.
describeConfigurationSet ::
  -- | 'dcsConfigurationSetName'
  Text ->
  DescribeConfigurationSet
describeConfigurationSet pConfigurationSetName_ =
  DescribeConfigurationSet'
    { _dcsConfigurationSetAttributeNames =
        Nothing,
      _dcsConfigurationSetName = pConfigurationSetName_
    }

-- | A list of configuration set attributes to return.
dcsConfigurationSetAttributeNames :: Lens' DescribeConfigurationSet [ConfigurationSetAttribute]
dcsConfigurationSetAttributeNames = lens _dcsConfigurationSetAttributeNames (\s a -> s {_dcsConfigurationSetAttributeNames = a}) . _Default . _Coerce

-- | The name of the configuration set to describe.
dcsConfigurationSetName :: Lens' DescribeConfigurationSet Text
dcsConfigurationSetName = lens _dcsConfigurationSetName (\s a -> s {_dcsConfigurationSetName = a})

instance AWSRequest DescribeConfigurationSet where
  type
    Rs DescribeConfigurationSet =
      DescribeConfigurationSetResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "DescribeConfigurationSetResult"
      ( \s h x ->
          DescribeConfigurationSetResponse'
            <$> (x .@? "TrackingOptions")
            <*> (x .@? "DeliveryOptions")
            <*> (x .@? "ReputationOptions")
            <*> ( x .@? "EventDestinations" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "ConfigurationSet")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfigurationSet

instance NFData DescribeConfigurationSet

instance ToHeaders DescribeConfigurationSet where
  toHeaders = const mempty

instance ToPath DescribeConfigurationSet where
  toPath = const "/"

instance ToQuery DescribeConfigurationSet where
  toQuery DescribeConfigurationSet' {..} =
    mconcat
      [ "Action"
          =: ("DescribeConfigurationSet" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "ConfigurationSetAttributeNames"
          =: toQuery
            ( toQueryList "member"
                <$> _dcsConfigurationSetAttributeNames
            ),
        "ConfigurationSetName" =: _dcsConfigurationSetName
      ]

-- | Represents the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'describeConfigurationSetResponse' smart constructor.
data DescribeConfigurationSetResponse = DescribeConfigurationSetResponse'
  { _dcsrrsTrackingOptions ::
      !( Maybe
           TrackingOptions
       ),
    _dcsrrsDeliveryOptions ::
      !( Maybe
           DeliveryOptions
       ),
    _dcsrrsReputationOptions ::
      !( Maybe
           ReputationOptions
       ),
    _dcsrrsEventDestinations ::
      !( Maybe
           [EventDestination]
       ),
    _dcsrrsConfigurationSet ::
      !( Maybe
           ConfigurationSet
       ),
    _dcsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConfigurationSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsrrsTrackingOptions' - The name of the custom open and click tracking domain associated with the configuration set.
--
-- * 'dcsrrsDeliveryOptions' - Undocumented member.
--
-- * 'dcsrrsReputationOptions' - An object that represents the reputation settings for the configuration set.
--
-- * 'dcsrrsEventDestinations' - A list of event destinations associated with the configuration set.
--
-- * 'dcsrrsConfigurationSet' - The configuration set object associated with the specified configuration set.
--
-- * 'dcsrrsResponseStatus' - -- | The response status code.
describeConfigurationSetResponse ::
  -- | 'dcsrrsResponseStatus'
  Int ->
  DescribeConfigurationSetResponse
describeConfigurationSetResponse pResponseStatus_ =
  DescribeConfigurationSetResponse'
    { _dcsrrsTrackingOptions =
        Nothing,
      _dcsrrsDeliveryOptions = Nothing,
      _dcsrrsReputationOptions = Nothing,
      _dcsrrsEventDestinations = Nothing,
      _dcsrrsConfigurationSet = Nothing,
      _dcsrrsResponseStatus = pResponseStatus_
    }

-- | The name of the custom open and click tracking domain associated with the configuration set.
dcsrrsTrackingOptions :: Lens' DescribeConfigurationSetResponse (Maybe TrackingOptions)
dcsrrsTrackingOptions = lens _dcsrrsTrackingOptions (\s a -> s {_dcsrrsTrackingOptions = a})

-- | Undocumented member.
dcsrrsDeliveryOptions :: Lens' DescribeConfigurationSetResponse (Maybe DeliveryOptions)
dcsrrsDeliveryOptions = lens _dcsrrsDeliveryOptions (\s a -> s {_dcsrrsDeliveryOptions = a})

-- | An object that represents the reputation settings for the configuration set.
dcsrrsReputationOptions :: Lens' DescribeConfigurationSetResponse (Maybe ReputationOptions)
dcsrrsReputationOptions = lens _dcsrrsReputationOptions (\s a -> s {_dcsrrsReputationOptions = a})

-- | A list of event destinations associated with the configuration set.
dcsrrsEventDestinations :: Lens' DescribeConfigurationSetResponse [EventDestination]
dcsrrsEventDestinations = lens _dcsrrsEventDestinations (\s a -> s {_dcsrrsEventDestinations = a}) . _Default . _Coerce

-- | The configuration set object associated with the specified configuration set.
dcsrrsConfigurationSet :: Lens' DescribeConfigurationSetResponse (Maybe ConfigurationSet)
dcsrrsConfigurationSet = lens _dcsrrsConfigurationSet (\s a -> s {_dcsrrsConfigurationSet = a})

-- | -- | The response status code.
dcsrrsResponseStatus :: Lens' DescribeConfigurationSetResponse Int
dcsrrsResponseStatus = lens _dcsrrsResponseStatus (\s a -> s {_dcsrrsResponseStatus = a})

instance NFData DescribeConfigurationSetResponse
