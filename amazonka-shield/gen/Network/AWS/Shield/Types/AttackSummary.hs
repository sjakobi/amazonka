{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.AttackSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AttackSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Shield.Types.AttackVectorDescription

-- | Summarizes all DDoS attacks for a specified time period.
--
--
--
-- /See:/ 'attackSummary' smart constructor.
data AttackSummary = AttackSummary'
  { _asResourceARN ::
      !(Maybe Text),
    _asStartTime :: !(Maybe POSIX),
    _asEndTime :: !(Maybe POSIX),
    _asAttackId :: !(Maybe Text),
    _asAttackVectors ::
      !(Maybe [AttackVectorDescription])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttackSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asResourceARN' - The ARN (Amazon Resource Name) of the resource that was attacked.
--
-- * 'asStartTime' - The start time of the attack, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
--
-- * 'asEndTime' - The end time of the attack, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
--
-- * 'asAttackId' - The unique identifier (ID) of the attack.
--
-- * 'asAttackVectors' - The list of attacks for a specified time period.
attackSummary ::
  AttackSummary
attackSummary =
  AttackSummary'
    { _asResourceARN = Nothing,
      _asStartTime = Nothing,
      _asEndTime = Nothing,
      _asAttackId = Nothing,
      _asAttackVectors = Nothing
    }

-- | The ARN (Amazon Resource Name) of the resource that was attacked.
asResourceARN :: Lens' AttackSummary (Maybe Text)
asResourceARN = lens _asResourceARN (\s a -> s {_asResourceARN = a})

-- | The start time of the attack, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
asStartTime :: Lens' AttackSummary (Maybe UTCTime)
asStartTime = lens _asStartTime (\s a -> s {_asStartTime = a}) . mapping _Time

-- | The end time of the attack, in Unix time in seconds. For more information see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp> .
asEndTime :: Lens' AttackSummary (Maybe UTCTime)
asEndTime = lens _asEndTime (\s a -> s {_asEndTime = a}) . mapping _Time

-- | The unique identifier (ID) of the attack.
asAttackId :: Lens' AttackSummary (Maybe Text)
asAttackId = lens _asAttackId (\s a -> s {_asAttackId = a})

-- | The list of attacks for a specified time period.
asAttackVectors :: Lens' AttackSummary [AttackVectorDescription]
asAttackVectors = lens _asAttackVectors (\s a -> s {_asAttackVectors = a}) . _Default . _Coerce

instance FromJSON AttackSummary where
  parseJSON =
    withObject
      "AttackSummary"
      ( \x ->
          AttackSummary'
            <$> (x .:? "ResourceArn")
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
            <*> (x .:? "AttackId")
            <*> (x .:? "AttackVectors" .!= mempty)
      )

instance Hashable AttackSummary

instance NFData AttackSummary
