{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ActiveViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ActiveViolation where

import Network.AWS.IoT.Types.Behavior
import Network.AWS.IoT.Types.MetricValue
import Network.AWS.IoT.Types.ViolationEventAdditionalInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an active Device Defender security profile behavior violation.
--
--
--
-- /See:/ 'activeViolation' smart constructor.
data ActiveViolation = ActiveViolation'
  { _avViolationId ::
      !(Maybe Text),
    _avLastViolationTime :: !(Maybe POSIX),
    _avThingName :: !(Maybe Text),
    _avLastViolationValue ::
      !(Maybe MetricValue),
    _avSecurityProfileName :: !(Maybe Text),
    _avBehavior :: !(Maybe Behavior),
    _avViolationStartTime :: !(Maybe POSIX),
    _avViolationEventAdditionalInfo ::
      !(Maybe ViolationEventAdditionalInfo)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActiveViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avViolationId' - The ID of the active violation.
--
-- * 'avLastViolationTime' - The time the most recent violation occurred.
--
-- * 'avThingName' - The name of the thing responsible for the active violation.
--
-- * 'avLastViolationValue' - The value of the metric (the measurement) that caused the most recent violation.
--
-- * 'avSecurityProfileName' - The security profile with the behavior is in violation.
--
-- * 'avBehavior' - The behavior that is being violated.
--
-- * 'avViolationStartTime' - The time the violation started.
--
-- * 'avViolationEventAdditionalInfo' - The details of a violation event.
activeViolation ::
  ActiveViolation
activeViolation =
  ActiveViolation'
    { _avViolationId = Nothing,
      _avLastViolationTime = Nothing,
      _avThingName = Nothing,
      _avLastViolationValue = Nothing,
      _avSecurityProfileName = Nothing,
      _avBehavior = Nothing,
      _avViolationStartTime = Nothing,
      _avViolationEventAdditionalInfo = Nothing
    }

-- | The ID of the active violation.
avViolationId :: Lens' ActiveViolation (Maybe Text)
avViolationId = lens _avViolationId (\s a -> s {_avViolationId = a})

-- | The time the most recent violation occurred.
avLastViolationTime :: Lens' ActiveViolation (Maybe UTCTime)
avLastViolationTime = lens _avLastViolationTime (\s a -> s {_avLastViolationTime = a}) . mapping _Time

-- | The name of the thing responsible for the active violation.
avThingName :: Lens' ActiveViolation (Maybe Text)
avThingName = lens _avThingName (\s a -> s {_avThingName = a})

-- | The value of the metric (the measurement) that caused the most recent violation.
avLastViolationValue :: Lens' ActiveViolation (Maybe MetricValue)
avLastViolationValue = lens _avLastViolationValue (\s a -> s {_avLastViolationValue = a})

-- | The security profile with the behavior is in violation.
avSecurityProfileName :: Lens' ActiveViolation (Maybe Text)
avSecurityProfileName = lens _avSecurityProfileName (\s a -> s {_avSecurityProfileName = a})

-- | The behavior that is being violated.
avBehavior :: Lens' ActiveViolation (Maybe Behavior)
avBehavior = lens _avBehavior (\s a -> s {_avBehavior = a})

-- | The time the violation started.
avViolationStartTime :: Lens' ActiveViolation (Maybe UTCTime)
avViolationStartTime = lens _avViolationStartTime (\s a -> s {_avViolationStartTime = a}) . mapping _Time

-- | The details of a violation event.
avViolationEventAdditionalInfo :: Lens' ActiveViolation (Maybe ViolationEventAdditionalInfo)
avViolationEventAdditionalInfo = lens _avViolationEventAdditionalInfo (\s a -> s {_avViolationEventAdditionalInfo = a})

instance FromJSON ActiveViolation where
  parseJSON =
    withObject
      "ActiveViolation"
      ( \x ->
          ActiveViolation'
            <$> (x .:? "violationId")
            <*> (x .:? "lastViolationTime")
            <*> (x .:? "thingName")
            <*> (x .:? "lastViolationValue")
            <*> (x .:? "securityProfileName")
            <*> (x .:? "behavior")
            <*> (x .:? "violationStartTime")
            <*> (x .:? "violationEventAdditionalInfo")
      )

instance Hashable ActiveViolation

instance NFData ActiveViolation
