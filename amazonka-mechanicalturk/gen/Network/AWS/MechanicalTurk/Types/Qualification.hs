{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.Qualification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.Qualification where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types.Locale
import Network.AWS.MechanicalTurk.Types.QualificationStatus
import Network.AWS.Prelude

-- | The Qualification data structure represents a Qualification assigned to a user, including the Qualification type and the value (score).
--
--
--
-- /See:/ 'qualification' smart constructor.
data Qualification = Qualification'
  { _qQualificationTypeId ::
      !(Maybe Text),
    _qStatus :: !(Maybe QualificationStatus),
    _qGrantTime :: !(Maybe POSIX),
    _qWorkerId :: !(Maybe Text),
    _qLocaleValue :: !(Maybe Locale),
    _qIntegerValue :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Qualification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qQualificationTypeId' - The ID of the Qualification type for the Qualification.
--
-- * 'qStatus' - The status of the Qualification. Valid values are Granted | Revoked.
--
-- * 'qGrantTime' - The date and time the Qualification was granted to the Worker. If the Worker's Qualification was revoked, and then re-granted based on a new Qualification request, GrantTime is the date and time of the last call to the AcceptQualificationRequest operation.
--
-- * 'qWorkerId' - The ID of the Worker who possesses the Qualification.
--
-- * 'qLocaleValue' - Undocumented member.
--
-- * 'qIntegerValue' - The value (score) of the Qualification, if the Qualification has an integer value.
qualification ::
  Qualification
qualification =
  Qualification'
    { _qQualificationTypeId = Nothing,
      _qStatus = Nothing,
      _qGrantTime = Nothing,
      _qWorkerId = Nothing,
      _qLocaleValue = Nothing,
      _qIntegerValue = Nothing
    }

-- | The ID of the Qualification type for the Qualification.
qQualificationTypeId :: Lens' Qualification (Maybe Text)
qQualificationTypeId = lens _qQualificationTypeId (\s a -> s {_qQualificationTypeId = a})

-- | The status of the Qualification. Valid values are Granted | Revoked.
qStatus :: Lens' Qualification (Maybe QualificationStatus)
qStatus = lens _qStatus (\s a -> s {_qStatus = a})

-- | The date and time the Qualification was granted to the Worker. If the Worker's Qualification was revoked, and then re-granted based on a new Qualification request, GrantTime is the date and time of the last call to the AcceptQualificationRequest operation.
qGrantTime :: Lens' Qualification (Maybe UTCTime)
qGrantTime = lens _qGrantTime (\s a -> s {_qGrantTime = a}) . mapping _Time

-- | The ID of the Worker who possesses the Qualification.
qWorkerId :: Lens' Qualification (Maybe Text)
qWorkerId = lens _qWorkerId (\s a -> s {_qWorkerId = a})

-- | Undocumented member.
qLocaleValue :: Lens' Qualification (Maybe Locale)
qLocaleValue = lens _qLocaleValue (\s a -> s {_qLocaleValue = a})

-- | The value (score) of the Qualification, if the Qualification has an integer value.
qIntegerValue :: Lens' Qualification (Maybe Int)
qIntegerValue = lens _qIntegerValue (\s a -> s {_qIntegerValue = a})

instance FromJSON Qualification where
  parseJSON =
    withObject
      "Qualification"
      ( \x ->
          Qualification'
            <$> (x .:? "QualificationTypeId")
            <*> (x .:? "Status")
            <*> (x .:? "GrantTime")
            <*> (x .:? "WorkerId")
            <*> (x .:? "LocaleValue")
            <*> (x .:? "IntegerValue")
      )

instance Hashable Qualification

instance NFData Qualification
