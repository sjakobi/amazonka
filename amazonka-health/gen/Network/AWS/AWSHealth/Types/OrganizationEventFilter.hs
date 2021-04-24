{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.OrganizationEventFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.OrganizationEventFilter where

import Network.AWS.AWSHealth.Types.DateTimeRange
import Network.AWS.AWSHealth.Types.EventStatusCode
import Network.AWS.AWSHealth.Types.EventTypeCategory
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The values to filter results from the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html DescribeEventsForOrganization> operation.
--
--
--
-- /See:/ 'organizationEventFilter' smart constructor.
data OrganizationEventFilter = OrganizationEventFilter'
  { _oefServices ::
      !(Maybe (List1 Text)),
    _oefStartTime ::
      !(Maybe DateTimeRange),
    _oefEntityARNs ::
      !(Maybe (List1 Text)),
    _oefEventTypeCodes ::
      !(Maybe (List1 Text)),
    _oefEndTime ::
      !(Maybe DateTimeRange),
    _oefEventStatusCodes ::
      !( Maybe
           ( List1
               EventStatusCode
           )
       ),
    _oefEntityValues ::
      !(Maybe (List1 Text)),
    _oefRegions ::
      !(Maybe (List1 Text)),
    _oefEventTypeCategories ::
      !( Maybe
           ( List1
               EventTypeCategory
           )
       ),
    _oefAwsAccountIds ::
      !(Maybe (List1 Text)),
    _oefLastUpdatedTime ::
      !(Maybe DateTimeRange)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OrganizationEventFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oefServices' - The AWS services associated with the event. For example, @EC2@ , @RDS@ .
--
-- * 'oefStartTime' - Undocumented member.
--
-- * 'oefEntityARNs' - A list of entity ARNs (unique identifiers).
--
-- * 'oefEventTypeCodes' - A list of unique identifiers for event types. For example, @"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".@
--
-- * 'oefEndTime' - Undocumented member.
--
-- * 'oefEventStatusCodes' - A list of event status codes.
--
-- * 'oefEntityValues' - A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).
--
-- * 'oefRegions' - A list of AWS Regions.
--
-- * 'oefEventTypeCategories' - A list of event type category codes (issue, scheduledChange, or accountNotification).
--
-- * 'oefAwsAccountIds' - A list of 12-digit AWS account numbers that contains the affected entities.
--
-- * 'oefLastUpdatedTime' - Undocumented member.
organizationEventFilter ::
  OrganizationEventFilter
organizationEventFilter =
  OrganizationEventFilter'
    { _oefServices = Nothing,
      _oefStartTime = Nothing,
      _oefEntityARNs = Nothing,
      _oefEventTypeCodes = Nothing,
      _oefEndTime = Nothing,
      _oefEventStatusCodes = Nothing,
      _oefEntityValues = Nothing,
      _oefRegions = Nothing,
      _oefEventTypeCategories = Nothing,
      _oefAwsAccountIds = Nothing,
      _oefLastUpdatedTime = Nothing
    }

-- | The AWS services associated with the event. For example, @EC2@ , @RDS@ .
oefServices :: Lens' OrganizationEventFilter (Maybe (NonEmpty Text))
oefServices = lens _oefServices (\s a -> s {_oefServices = a}) . mapping _List1

-- | Undocumented member.
oefStartTime :: Lens' OrganizationEventFilter (Maybe DateTimeRange)
oefStartTime = lens _oefStartTime (\s a -> s {_oefStartTime = a})

-- | A list of entity ARNs (unique identifiers).
oefEntityARNs :: Lens' OrganizationEventFilter (Maybe (NonEmpty Text))
oefEntityARNs = lens _oefEntityARNs (\s a -> s {_oefEntityARNs = a}) . mapping _List1

-- | A list of unique identifiers for event types. For example, @"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".@
oefEventTypeCodes :: Lens' OrganizationEventFilter (Maybe (NonEmpty Text))
oefEventTypeCodes = lens _oefEventTypeCodes (\s a -> s {_oefEventTypeCodes = a}) . mapping _List1

-- | Undocumented member.
oefEndTime :: Lens' OrganizationEventFilter (Maybe DateTimeRange)
oefEndTime = lens _oefEndTime (\s a -> s {_oefEndTime = a})

-- | A list of event status codes.
oefEventStatusCodes :: Lens' OrganizationEventFilter (Maybe (NonEmpty EventStatusCode))
oefEventStatusCodes = lens _oefEventStatusCodes (\s a -> s {_oefEventStatusCodes = a}) . mapping _List1

-- | A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).
oefEntityValues :: Lens' OrganizationEventFilter (Maybe (NonEmpty Text))
oefEntityValues = lens _oefEntityValues (\s a -> s {_oefEntityValues = a}) . mapping _List1

-- | A list of AWS Regions.
oefRegions :: Lens' OrganizationEventFilter (Maybe (NonEmpty Text))
oefRegions = lens _oefRegions (\s a -> s {_oefRegions = a}) . mapping _List1

-- | A list of event type category codes (issue, scheduledChange, or accountNotification).
oefEventTypeCategories :: Lens' OrganizationEventFilter (Maybe (NonEmpty EventTypeCategory))
oefEventTypeCategories = lens _oefEventTypeCategories (\s a -> s {_oefEventTypeCategories = a}) . mapping _List1

-- | A list of 12-digit AWS account numbers that contains the affected entities.
oefAwsAccountIds :: Lens' OrganizationEventFilter (Maybe (NonEmpty Text))
oefAwsAccountIds = lens _oefAwsAccountIds (\s a -> s {_oefAwsAccountIds = a}) . mapping _List1

-- | Undocumented member.
oefLastUpdatedTime :: Lens' OrganizationEventFilter (Maybe DateTimeRange)
oefLastUpdatedTime = lens _oefLastUpdatedTime (\s a -> s {_oefLastUpdatedTime = a})

instance Hashable OrganizationEventFilter

instance NFData OrganizationEventFilter

instance ToJSON OrganizationEventFilter where
  toJSON OrganizationEventFilter' {..} =
    object
      ( catMaybes
          [ ("services" .=) <$> _oefServices,
            ("startTime" .=) <$> _oefStartTime,
            ("entityArns" .=) <$> _oefEntityARNs,
            ("eventTypeCodes" .=) <$> _oefEventTypeCodes,
            ("endTime" .=) <$> _oefEndTime,
            ("eventStatusCodes" .=) <$> _oefEventStatusCodes,
            ("entityValues" .=) <$> _oefEntityValues,
            ("regions" .=) <$> _oefRegions,
            ("eventTypeCategories" .=)
              <$> _oefEventTypeCategories,
            ("awsAccountIds" .=) <$> _oefAwsAccountIds,
            ("lastUpdatedTime" .=) <$> _oefLastUpdatedTime
          ]
      )
