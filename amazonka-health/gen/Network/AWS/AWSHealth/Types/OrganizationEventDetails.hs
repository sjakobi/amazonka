{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.OrganizationEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.OrganizationEventDetails where

import Network.AWS.AWSHealth.Types.Event
import Network.AWS.AWSHealth.Types.EventDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Detailed information about an event. A combination of an <https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html Event> object, an <https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html EventDescription> object, and additional metadata about the event. Returned by the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html DescribeEventDetailsForOrganization> operation.
--
--
--
-- /See:/ 'organizationEventDetails' smart constructor.
data OrganizationEventDetails = OrganizationEventDetails'
  { _oedAwsAccountId ::
      !(Maybe Text),
    _oedEventMetadata ::
      !( Maybe
           (Map Text Text)
       ),
    _oedEventDescription ::
      !( Maybe
           EventDescription
       ),
    _oedEvent ::
      !(Maybe Event)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OrganizationEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oedAwsAccountId' - The 12-digit AWS account numbers that contains the affected entities.
--
-- * 'oedEventMetadata' - Additional metadata about the event.
--
-- * 'oedEventDescription' - Undocumented member.
--
-- * 'oedEvent' - Undocumented member.
organizationEventDetails ::
  OrganizationEventDetails
organizationEventDetails =
  OrganizationEventDetails'
    { _oedAwsAccountId =
        Nothing,
      _oedEventMetadata = Nothing,
      _oedEventDescription = Nothing,
      _oedEvent = Nothing
    }

-- | The 12-digit AWS account numbers that contains the affected entities.
oedAwsAccountId :: Lens' OrganizationEventDetails (Maybe Text)
oedAwsAccountId = lens _oedAwsAccountId (\s a -> s {_oedAwsAccountId = a})

-- | Additional metadata about the event.
oedEventMetadata :: Lens' OrganizationEventDetails (HashMap Text Text)
oedEventMetadata = lens _oedEventMetadata (\s a -> s {_oedEventMetadata = a}) . _Default . _Map

-- | Undocumented member.
oedEventDescription :: Lens' OrganizationEventDetails (Maybe EventDescription)
oedEventDescription = lens _oedEventDescription (\s a -> s {_oedEventDescription = a})

-- | Undocumented member.
oedEvent :: Lens' OrganizationEventDetails (Maybe Event)
oedEvent = lens _oedEvent (\s a -> s {_oedEvent = a})

instance FromJSON OrganizationEventDetails where
  parseJSON =
    withObject
      "OrganizationEventDetails"
      ( \x ->
          OrganizationEventDetails'
            <$> (x .:? "awsAccountId")
            <*> (x .:? "eventMetadata" .!= mempty)
            <*> (x .:? "eventDescription")
            <*> (x .:? "event")
      )

instance Hashable OrganizationEventDetails

instance NFData OrganizationEventDetails
