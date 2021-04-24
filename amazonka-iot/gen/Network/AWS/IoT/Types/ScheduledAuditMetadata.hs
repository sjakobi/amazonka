{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ScheduledAuditMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ScheduledAuditMetadata where

import Network.AWS.IoT.Types.AuditFrequency
import Network.AWS.IoT.Types.DayOfWeek
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the scheduled audit.
--
--
--
-- /See:/ 'scheduledAuditMetadata' smart constructor.
data ScheduledAuditMetadata = ScheduledAuditMetadata'
  { _samDayOfWeek ::
      !(Maybe DayOfWeek),
    _samScheduledAuditARN ::
      !(Maybe Text),
    _samScheduledAuditName ::
      !(Maybe Text),
    _samDayOfMonth ::
      !(Maybe Text),
    _samFrequency ::
      !(Maybe AuditFrequency)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ScheduledAuditMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'samDayOfWeek' - The day of the week on which the scheduled audit is run (if the @frequency@ is "WEEKLY" or "BIWEEKLY").
--
-- * 'samScheduledAuditARN' - The ARN of the scheduled audit.
--
-- * 'samScheduledAuditName' - The name of the scheduled audit.
--
-- * 'samDayOfMonth' - The day of the month on which the scheduled audit is run (if the @frequency@ is "MONTHLY"). If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.
--
-- * 'samFrequency' - How often the scheduled audit occurs.
scheduledAuditMetadata ::
  ScheduledAuditMetadata
scheduledAuditMetadata =
  ScheduledAuditMetadata'
    { _samDayOfWeek = Nothing,
      _samScheduledAuditARN = Nothing,
      _samScheduledAuditName = Nothing,
      _samDayOfMonth = Nothing,
      _samFrequency = Nothing
    }

-- | The day of the week on which the scheduled audit is run (if the @frequency@ is "WEEKLY" or "BIWEEKLY").
samDayOfWeek :: Lens' ScheduledAuditMetadata (Maybe DayOfWeek)
samDayOfWeek = lens _samDayOfWeek (\s a -> s {_samDayOfWeek = a})

-- | The ARN of the scheduled audit.
samScheduledAuditARN :: Lens' ScheduledAuditMetadata (Maybe Text)
samScheduledAuditARN = lens _samScheduledAuditARN (\s a -> s {_samScheduledAuditARN = a})

-- | The name of the scheduled audit.
samScheduledAuditName :: Lens' ScheduledAuditMetadata (Maybe Text)
samScheduledAuditName = lens _samScheduledAuditName (\s a -> s {_samScheduledAuditName = a})

-- | The day of the month on which the scheduled audit is run (if the @frequency@ is "MONTHLY"). If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.
samDayOfMonth :: Lens' ScheduledAuditMetadata (Maybe Text)
samDayOfMonth = lens _samDayOfMonth (\s a -> s {_samDayOfMonth = a})

-- | How often the scheduled audit occurs.
samFrequency :: Lens' ScheduledAuditMetadata (Maybe AuditFrequency)
samFrequency = lens _samFrequency (\s a -> s {_samFrequency = a})

instance FromJSON ScheduledAuditMetadata where
  parseJSON =
    withObject
      "ScheduledAuditMetadata"
      ( \x ->
          ScheduledAuditMetadata'
            <$> (x .:? "dayOfWeek")
            <*> (x .:? "scheduledAuditArn")
            <*> (x .:? "scheduledAuditName")
            <*> (x .:? "dayOfMonth")
            <*> (x .:? "frequency")
      )

instance Hashable ScheduledAuditMetadata

instance NFData ScheduledAuditMetadata
