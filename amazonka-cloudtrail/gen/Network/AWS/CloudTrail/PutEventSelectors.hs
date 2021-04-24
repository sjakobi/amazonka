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
-- Module      : Network.AWS.CloudTrail.PutEventSelectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures an event selector or advanced event selectors for your trail. Use event selectors or advanced event selectors to specify management and data event settings for your trail. By default, trails created without specific event selectors are configured to log all read and write management events, and no data events.
--
--
-- When an event occurs in your account, CloudTrail evaluates the event selectors or advanced event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.
--
-- Example
--
--     * You create an event selector for a trail and specify that you want write-only events.
--
--     * The EC2 @GetConsoleOutput@ and @RunInstances@ API operations occur in your account.
--
--     * CloudTrail evaluates whether the events match your event selectors.
--
--     * The @RunInstances@ is a write-only event and it matches your event selector. The trail logs the event.
--
--     * The @GetConsoleOutput@ is a read-only event that doesn't match your event selector. The trail doesn't log the event.
--
--
--
-- The @PutEventSelectors@ operation must be called from the region in which the trail was created; otherwise, an @InvalidHomeRegionException@ exception is thrown.
--
-- You can configure up to five event selectors for each trail. For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html Logging data and management events for trails > and <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html Quotas in AWS CloudTrail> in the /AWS CloudTrail User Guide/ .
--
-- You can add advanced event selectors, and conditions for your advanced event selectors, up to a maximum of 500 values for all conditions and selectors on a trail. You can use either @AdvancedEventSelectors@ or @EventSelectors@ , but not both. If you apply @AdvancedEventSelectors@ to a trail, any existing @EventSelectors@ are overwritten. For more information about advanced event selectors, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html Logging data events for trails> in the /AWS CloudTrail User Guide/ .
module Network.AWS.CloudTrail.PutEventSelectors
  ( -- * Creating a Request
    putEventSelectors,
    PutEventSelectors,

    -- * Request Lenses
    pesEventSelectors,
    pesAdvancedEventSelectors,
    pesTrailName,

    -- * Destructuring the Response
    putEventSelectorsResponse,
    PutEventSelectorsResponse,

    -- * Response Lenses
    pesrrsTrailARN,
    pesrrsEventSelectors,
    pesrrsAdvancedEventSelectors,
    pesrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putEventSelectors' smart constructor.
data PutEventSelectors = PutEventSelectors'
  { _pesEventSelectors ::
      !(Maybe [EventSelector]),
    _pesAdvancedEventSelectors ::
      !(Maybe [AdvancedEventSelector]),
    _pesTrailName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutEventSelectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pesEventSelectors' - Specifies the settings for your event selectors. You can configure up to five event selectors for a trail. You can use either @EventSelectors@ or @AdvancedEventSelectors@ in a @PutEventSelectors@ request, but not both. If you apply @EventSelectors@ to a trail, any existing @AdvancedEventSelectors@ are overwritten.
--
-- * 'pesAdvancedEventSelectors' - Specifies the settings for advanced event selectors. You can add advanced event selectors, and conditions for your advanced event selectors, up to a maximum of 500 values for all conditions and selectors on a trail. You can use either @AdvancedEventSelectors@ or @EventSelectors@ , but not both. If you apply @AdvancedEventSelectors@ to a trail, any existing @EventSelectors@ are overwritten. For more information about advanced event selectors, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html Logging data events for trails> in the /AWS CloudTrail User Guide/ .
--
-- * 'pesTrailName' - Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are invalid.     * Not be in IP address format (for example, 192.168.5.4) If you specify a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
putEventSelectors ::
  -- | 'pesTrailName'
  Text ->
  PutEventSelectors
putEventSelectors pTrailName_ =
  PutEventSelectors'
    { _pesEventSelectors = Nothing,
      _pesAdvancedEventSelectors = Nothing,
      _pesTrailName = pTrailName_
    }

-- | Specifies the settings for your event selectors. You can configure up to five event selectors for a trail. You can use either @EventSelectors@ or @AdvancedEventSelectors@ in a @PutEventSelectors@ request, but not both. If you apply @EventSelectors@ to a trail, any existing @AdvancedEventSelectors@ are overwritten.
pesEventSelectors :: Lens' PutEventSelectors [EventSelector]
pesEventSelectors = lens _pesEventSelectors (\s a -> s {_pesEventSelectors = a}) . _Default . _Coerce

-- | Specifies the settings for advanced event selectors. You can add advanced event selectors, and conditions for your advanced event selectors, up to a maximum of 500 values for all conditions and selectors on a trail. You can use either @AdvancedEventSelectors@ or @EventSelectors@ , but not both. If you apply @AdvancedEventSelectors@ to a trail, any existing @EventSelectors@ are overwritten. For more information about advanced event selectors, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html Logging data events for trails> in the /AWS CloudTrail User Guide/ .
pesAdvancedEventSelectors :: Lens' PutEventSelectors [AdvancedEventSelector]
pesAdvancedEventSelectors = lens _pesAdvancedEventSelectors (\s a -> s {_pesAdvancedEventSelectors = a}) . _Default . _Coerce

-- | Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are invalid.     * Not be in IP address format (for example, 192.168.5.4) If you specify a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
pesTrailName :: Lens' PutEventSelectors Text
pesTrailName = lens _pesTrailName (\s a -> s {_pesTrailName = a})

instance AWSRequest PutEventSelectors where
  type Rs PutEventSelectors = PutEventSelectorsResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          PutEventSelectorsResponse'
            <$> (x .?> "TrailARN")
            <*> (x .?> "EventSelectors" .!@ mempty)
            <*> (x .?> "AdvancedEventSelectors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable PutEventSelectors

instance NFData PutEventSelectors

instance ToHeaders PutEventSelectors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.PutEventSelectors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutEventSelectors where
  toJSON PutEventSelectors' {..} =
    object
      ( catMaybes
          [ ("EventSelectors" .=) <$> _pesEventSelectors,
            ("AdvancedEventSelectors" .=)
              <$> _pesAdvancedEventSelectors,
            Just ("TrailName" .= _pesTrailName)
          ]
      )

instance ToPath PutEventSelectors where
  toPath = const "/"

instance ToQuery PutEventSelectors where
  toQuery = const mempty

-- | /See:/ 'putEventSelectorsResponse' smart constructor.
data PutEventSelectorsResponse = PutEventSelectorsResponse'
  { _pesrrsTrailARN ::
      !(Maybe Text),
    _pesrrsEventSelectors ::
      !( Maybe
           [EventSelector]
       ),
    _pesrrsAdvancedEventSelectors ::
      !( Maybe
           [AdvancedEventSelector]
       ),
    _pesrrsResponseStatus ::
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

-- | Creates a value of 'PutEventSelectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pesrrsTrailARN' - Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
--
-- * 'pesrrsEventSelectors' - Specifies the event selectors configured for your trail.
--
-- * 'pesrrsAdvancedEventSelectors' - Specifies the advanced event selectors configured for your trail.
--
-- * 'pesrrsResponseStatus' - -- | The response status code.
putEventSelectorsResponse ::
  -- | 'pesrrsResponseStatus'
  Int ->
  PutEventSelectorsResponse
putEventSelectorsResponse pResponseStatus_ =
  PutEventSelectorsResponse'
    { _pesrrsTrailARN =
        Nothing,
      _pesrrsEventSelectors = Nothing,
      _pesrrsAdvancedEventSelectors = Nothing,
      _pesrrsResponseStatus = pResponseStatus_
    }

-- | Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
pesrrsTrailARN :: Lens' PutEventSelectorsResponse (Maybe Text)
pesrrsTrailARN = lens _pesrrsTrailARN (\s a -> s {_pesrrsTrailARN = a})

-- | Specifies the event selectors configured for your trail.
pesrrsEventSelectors :: Lens' PutEventSelectorsResponse [EventSelector]
pesrrsEventSelectors = lens _pesrrsEventSelectors (\s a -> s {_pesrrsEventSelectors = a}) . _Default . _Coerce

-- | Specifies the advanced event selectors configured for your trail.
pesrrsAdvancedEventSelectors :: Lens' PutEventSelectorsResponse [AdvancedEventSelector]
pesrrsAdvancedEventSelectors = lens _pesrrsAdvancedEventSelectors (\s a -> s {_pesrrsAdvancedEventSelectors = a}) . _Default . _Coerce

-- | -- | The response status code.
pesrrsResponseStatus :: Lens' PutEventSelectorsResponse Int
pesrrsResponseStatus = lens _pesrrsResponseStatus (\s a -> s {_pesrrsResponseStatus = a})

instance NFData PutEventSelectorsResponse
