{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.AffectedEntity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.AffectedEntity where

import Network.AWS.AWSHealth.Types.EntityStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an entity that is affected by a Health event.
--
--
--
-- /See:/ 'affectedEntity' smart constructor.
data AffectedEntity = AffectedEntity'
  { _aeEventARN ::
      !(Maybe Text),
    _aeAwsAccountId :: !(Maybe Text),
    _aeStatusCode ::
      !(Maybe EntityStatusCode),
    _aeTags :: !(Maybe (Map Text Text)),
    _aeEntityARN :: !(Maybe Text),
    _aeEntityValue :: !(Maybe Text),
    _aeEntityURL :: !(Maybe Text),
    _aeLastUpdatedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AffectedEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeEventARN' - The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
--
-- * 'aeAwsAccountId' - The 12-digit AWS account number that contains the affected entity.
--
-- * 'aeStatusCode' - The most recent status of the entity affected by the event. The possible values are @IMPAIRED@ , @UNIMPAIRED@ , and @UNKNOWN@ .
--
-- * 'aeTags' - A map of entity tags attached to the affected entity.
--
-- * 'aeEntityARN' - The unique identifier for the entity. Format: @arn:aws:health:/entity-region/ :/aws-account/ :entity//entity-id/ @ . Example: @arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K@
--
-- * 'aeEntityValue' - The ID of the affected entity.
--
-- * 'aeEntityURL' - The URL of the affected entity.
--
-- * 'aeLastUpdatedTime' - The most recent time that the entity was updated.
affectedEntity ::
  AffectedEntity
affectedEntity =
  AffectedEntity'
    { _aeEventARN = Nothing,
      _aeAwsAccountId = Nothing,
      _aeStatusCode = Nothing,
      _aeTags = Nothing,
      _aeEntityARN = Nothing,
      _aeEntityValue = Nothing,
      _aeEntityURL = Nothing,
      _aeLastUpdatedTime = Nothing
    }

-- | The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
aeEventARN :: Lens' AffectedEntity (Maybe Text)
aeEventARN = lens _aeEventARN (\s a -> s {_aeEventARN = a})

-- | The 12-digit AWS account number that contains the affected entity.
aeAwsAccountId :: Lens' AffectedEntity (Maybe Text)
aeAwsAccountId = lens _aeAwsAccountId (\s a -> s {_aeAwsAccountId = a})

-- | The most recent status of the entity affected by the event. The possible values are @IMPAIRED@ , @UNIMPAIRED@ , and @UNKNOWN@ .
aeStatusCode :: Lens' AffectedEntity (Maybe EntityStatusCode)
aeStatusCode = lens _aeStatusCode (\s a -> s {_aeStatusCode = a})

-- | A map of entity tags attached to the affected entity.
aeTags :: Lens' AffectedEntity (HashMap Text Text)
aeTags = lens _aeTags (\s a -> s {_aeTags = a}) . _Default . _Map

-- | The unique identifier for the entity. Format: @arn:aws:health:/entity-region/ :/aws-account/ :entity//entity-id/ @ . Example: @arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K@
aeEntityARN :: Lens' AffectedEntity (Maybe Text)
aeEntityARN = lens _aeEntityARN (\s a -> s {_aeEntityARN = a})

-- | The ID of the affected entity.
aeEntityValue :: Lens' AffectedEntity (Maybe Text)
aeEntityValue = lens _aeEntityValue (\s a -> s {_aeEntityValue = a})

-- | The URL of the affected entity.
aeEntityURL :: Lens' AffectedEntity (Maybe Text)
aeEntityURL = lens _aeEntityURL (\s a -> s {_aeEntityURL = a})

-- | The most recent time that the entity was updated.
aeLastUpdatedTime :: Lens' AffectedEntity (Maybe UTCTime)
aeLastUpdatedTime = lens _aeLastUpdatedTime (\s a -> s {_aeLastUpdatedTime = a}) . mapping _Time

instance FromJSON AffectedEntity where
  parseJSON =
    withObject
      "AffectedEntity"
      ( \x ->
          AffectedEntity'
            <$> (x .:? "eventArn")
            <*> (x .:? "awsAccountId")
            <*> (x .:? "statusCode")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "entityArn")
            <*> (x .:? "entityValue")
            <*> (x .:? "entityUrl")
            <*> (x .:? "lastUpdatedTime")
      )

instance Hashable AffectedEntity

instance NFData AffectedEntity
