{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.OrganizationEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.OrganizationEvent where

import Network.AWS.AWSHealth.Types.EventScopeCode
import Network.AWS.AWSHealth.Types.EventStatusCode
import Network.AWS.AWSHealth.Types.EventTypeCategory
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary information about an event, returned by the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html DescribeEventsForOrganization> operation.
--
--
--
-- /See:/ 'organizationEvent' smart constructor.
data OrganizationEvent = OrganizationEvent'
  { _oeEventTypeCategory ::
      !(Maybe EventTypeCategory),
    _oeEventScopeCode ::
      !(Maybe EventScopeCode),
    _oeStartTime :: !(Maybe POSIX),
    _oeService :: !(Maybe Text),
    _oeArn :: !(Maybe Text),
    _oeEndTime :: !(Maybe POSIX),
    _oeStatusCode ::
      !(Maybe EventStatusCode),
    _oeEventTypeCode :: !(Maybe Text),
    _oeRegion :: !(Maybe Text),
    _oeLastUpdatedTime ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeEventTypeCategory' - The category of the event type.
--
-- * 'oeEventScopeCode' - This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.     * If the @eventScopeCode@ value is @PUBLIC@ , then the @affectedAccounts@ value is always empty.     * If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@ , then the @affectedAccounts@ value lists the affected AWS accounts in your organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you have AWS accounts that use that service, those account IDs appear in the response.     * If the @eventScopeCode@ value is @NONE@ , then the @eventArn@ that you specified in the request is invalid or doesn't exist.
--
-- * 'oeStartTime' - The date and time that the event began.
--
-- * 'oeService' - The AWS service that is affected by the event. For example, EC2, RDS.
--
-- * 'oeArn' - The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
--
-- * 'oeEndTime' - The date and time that the event ended.
--
-- * 'oeStatusCode' - The most recent status of the event. Possible values are @open@ , @closed@ , and @upcoming@ .
--
-- * 'oeEventTypeCode' - The unique identifier for the event type. The format is @AWS_SERVICE_DESCRIPTION@ . For example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ .
--
-- * 'oeRegion' - The AWS Region name of the event.
--
-- * 'oeLastUpdatedTime' - The most recent date and time that the event was updated.
organizationEvent ::
  OrganizationEvent
organizationEvent =
  OrganizationEvent'
    { _oeEventTypeCategory = Nothing,
      _oeEventScopeCode = Nothing,
      _oeStartTime = Nothing,
      _oeService = Nothing,
      _oeArn = Nothing,
      _oeEndTime = Nothing,
      _oeStatusCode = Nothing,
      _oeEventTypeCode = Nothing,
      _oeRegion = Nothing,
      _oeLastUpdatedTime = Nothing
    }

-- | The category of the event type.
oeEventTypeCategory :: Lens' OrganizationEvent (Maybe EventTypeCategory)
oeEventTypeCategory = lens _oeEventTypeCategory (\s a -> s {_oeEventTypeCategory = a})

-- | This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.     * If the @eventScopeCode@ value is @PUBLIC@ , then the @affectedAccounts@ value is always empty.     * If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@ , then the @affectedAccounts@ value lists the affected AWS accounts in your organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you have AWS accounts that use that service, those account IDs appear in the response.     * If the @eventScopeCode@ value is @NONE@ , then the @eventArn@ that you specified in the request is invalid or doesn't exist.
oeEventScopeCode :: Lens' OrganizationEvent (Maybe EventScopeCode)
oeEventScopeCode = lens _oeEventScopeCode (\s a -> s {_oeEventScopeCode = a})

-- | The date and time that the event began.
oeStartTime :: Lens' OrganizationEvent (Maybe UTCTime)
oeStartTime = lens _oeStartTime (\s a -> s {_oeStartTime = a}) . mapping _Time

-- | The AWS service that is affected by the event. For example, EC2, RDS.
oeService :: Lens' OrganizationEvent (Maybe Text)
oeService = lens _oeService (\s a -> s {_oeService = a})

-- | The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
oeArn :: Lens' OrganizationEvent (Maybe Text)
oeArn = lens _oeArn (\s a -> s {_oeArn = a})

-- | The date and time that the event ended.
oeEndTime :: Lens' OrganizationEvent (Maybe UTCTime)
oeEndTime = lens _oeEndTime (\s a -> s {_oeEndTime = a}) . mapping _Time

-- | The most recent status of the event. Possible values are @open@ , @closed@ , and @upcoming@ .
oeStatusCode :: Lens' OrganizationEvent (Maybe EventStatusCode)
oeStatusCode = lens _oeStatusCode (\s a -> s {_oeStatusCode = a})

-- | The unique identifier for the event type. The format is @AWS_SERVICE_DESCRIPTION@ . For example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ .
oeEventTypeCode :: Lens' OrganizationEvent (Maybe Text)
oeEventTypeCode = lens _oeEventTypeCode (\s a -> s {_oeEventTypeCode = a})

-- | The AWS Region name of the event.
oeRegion :: Lens' OrganizationEvent (Maybe Text)
oeRegion = lens _oeRegion (\s a -> s {_oeRegion = a})

-- | The most recent date and time that the event was updated.
oeLastUpdatedTime :: Lens' OrganizationEvent (Maybe UTCTime)
oeLastUpdatedTime = lens _oeLastUpdatedTime (\s a -> s {_oeLastUpdatedTime = a}) . mapping _Time

instance FromJSON OrganizationEvent where
  parseJSON =
    withObject
      "OrganizationEvent"
      ( \x ->
          OrganizationEvent'
            <$> (x .:? "eventTypeCategory")
            <*> (x .:? "eventScopeCode")
            <*> (x .:? "startTime")
            <*> (x .:? "service")
            <*> (x .:? "arn")
            <*> (x .:? "endTime")
            <*> (x .:? "statusCode")
            <*> (x .:? "eventTypeCode")
            <*> (x .:? "region")
            <*> (x .:? "lastUpdatedTime")
      )

instance Hashable OrganizationEvent

instance NFData OrganizationEvent
