{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.AttackDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AttackDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Shield.Types.AttackProperty
import Network.AWS.Shield.Types.Mitigation
import Network.AWS.Shield.Types.SubResourceSummary
import Network.AWS.Shield.Types.SummarizedCounter

-- | The details of a DDoS attack.
--
--
--
-- /See:/ 'attackDetail' smart constructor.
data AttackDetail = AttackDetail'
  { _adResourceARN ::
      !(Maybe Text),
    _adAttackProperties ::
      !(Maybe [AttackProperty]),
    _adStartTime :: !(Maybe POSIX),
    _adEndTime :: !(Maybe POSIX),
    _adAttackCounters ::
      !(Maybe [SummarizedCounter]),
    _adMitigations :: !(Maybe [Mitigation]),
    _adAttackId :: !(Maybe Text),
    _adSubResources ::
      !(Maybe [SubResourceSummary])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttackDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adResourceARN' - The ARN (Amazon Resource Name) of the resource that was attacked.
--
-- * 'adAttackProperties' - The array of 'AttackProperty' objects.
--
-- * 'adStartTime' - The time the attack started, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
--
-- * 'adEndTime' - The time the attack ended, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
--
-- * 'adAttackCounters' - List of counters that describe the attack for the specified time period.
--
-- * 'adMitigations' - List of mitigation actions taken for the attack.
--
-- * 'adAttackId' - The unique identifier (ID) of the attack.
--
-- * 'adSubResources' - If applicable, additional detail about the resource being attacked, for example, IP address or URL.
attackDetail ::
  AttackDetail
attackDetail =
  AttackDetail'
    { _adResourceARN = Nothing,
      _adAttackProperties = Nothing,
      _adStartTime = Nothing,
      _adEndTime = Nothing,
      _adAttackCounters = Nothing,
      _adMitigations = Nothing,
      _adAttackId = Nothing,
      _adSubResources = Nothing
    }

-- | The ARN (Amazon Resource Name) of the resource that was attacked.
adResourceARN :: Lens' AttackDetail (Maybe Text)
adResourceARN = lens _adResourceARN (\s a -> s {_adResourceARN = a})

-- | The array of 'AttackProperty' objects.
adAttackProperties :: Lens' AttackDetail [AttackProperty]
adAttackProperties = lens _adAttackProperties (\s a -> s {_adAttackProperties = a}) . _Default . _Coerce

-- | The time the attack started, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
adStartTime :: Lens' AttackDetail (Maybe UTCTime)
adStartTime = lens _adStartTime (\s a -> s {_adStartTime = a}) . mapping _Time

-- | The time the attack ended, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
adEndTime :: Lens' AttackDetail (Maybe UTCTime)
adEndTime = lens _adEndTime (\s a -> s {_adEndTime = a}) . mapping _Time

-- | List of counters that describe the attack for the specified time period.
adAttackCounters :: Lens' AttackDetail [SummarizedCounter]
adAttackCounters = lens _adAttackCounters (\s a -> s {_adAttackCounters = a}) . _Default . _Coerce

-- | List of mitigation actions taken for the attack.
adMitigations :: Lens' AttackDetail [Mitigation]
adMitigations = lens _adMitigations (\s a -> s {_adMitigations = a}) . _Default . _Coerce

-- | The unique identifier (ID) of the attack.
adAttackId :: Lens' AttackDetail (Maybe Text)
adAttackId = lens _adAttackId (\s a -> s {_adAttackId = a})

-- | If applicable, additional detail about the resource being attacked, for example, IP address or URL.
adSubResources :: Lens' AttackDetail [SubResourceSummary]
adSubResources = lens _adSubResources (\s a -> s {_adSubResources = a}) . _Default . _Coerce

instance FromJSON AttackDetail where
  parseJSON =
    withObject
      "AttackDetail"
      ( \x ->
          AttackDetail'
            <$> (x .:? "ResourceArn")
            <*> (x .:? "AttackProperties" .!= mempty)
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
            <*> (x .:? "AttackCounters" .!= mempty)
            <*> (x .:? "Mitigations" .!= mempty)
            <*> (x .:? "AttackId")
            <*> (x .:? "SubResources" .!= mempty)
      )

instance Hashable AttackDetail

instance NFData AttackDetail
