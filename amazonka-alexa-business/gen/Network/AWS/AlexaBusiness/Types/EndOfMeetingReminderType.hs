{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.EndOfMeetingReminderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EndOfMeetingReminderType
  ( EndOfMeetingReminderType
      ( ..,
        EndOfMeetingReminderTypeANNOUNCEMENTTIMECHECK,
        EndOfMeetingReminderTypeANNOUNCEMENTVARIABLETIMELEFT,
        EndOfMeetingReminderTypeCHIME,
        EndOfMeetingReminderTypeKNOCK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndOfMeetingReminderType = EndOfMeetingReminderType'
  { fromEndOfMeetingReminderType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern EndOfMeetingReminderTypeANNOUNCEMENTTIMECHECK :: EndOfMeetingReminderType
pattern EndOfMeetingReminderTypeANNOUNCEMENTTIMECHECK = EndOfMeetingReminderType' "ANNOUNCEMENT_TIME_CHECK"

pattern EndOfMeetingReminderTypeANNOUNCEMENTVARIABLETIMELEFT :: EndOfMeetingReminderType
pattern EndOfMeetingReminderTypeANNOUNCEMENTVARIABLETIMELEFT = EndOfMeetingReminderType' "ANNOUNCEMENT_VARIABLE_TIME_LEFT"

pattern EndOfMeetingReminderTypeCHIME :: EndOfMeetingReminderType
pattern EndOfMeetingReminderTypeCHIME = EndOfMeetingReminderType' "CHIME"

pattern EndOfMeetingReminderTypeKNOCK :: EndOfMeetingReminderType
pattern EndOfMeetingReminderTypeKNOCK = EndOfMeetingReminderType' "KNOCK"

{-# COMPLETE
  EndOfMeetingReminderTypeANNOUNCEMENTTIMECHECK,
  EndOfMeetingReminderTypeANNOUNCEMENTVARIABLETIMELEFT,
  EndOfMeetingReminderTypeCHIME,
  EndOfMeetingReminderTypeKNOCK,
  EndOfMeetingReminderType'
  #-}

instance Prelude.FromText EndOfMeetingReminderType where
  parser = EndOfMeetingReminderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndOfMeetingReminderType where
  toText (EndOfMeetingReminderType' x) = x

instance Prelude.Hashable EndOfMeetingReminderType

instance Prelude.NFData EndOfMeetingReminderType

instance Prelude.ToByteString EndOfMeetingReminderType

instance Prelude.ToQuery EndOfMeetingReminderType

instance Prelude.ToHeader EndOfMeetingReminderType

instance Prelude.ToJSON EndOfMeetingReminderType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EndOfMeetingReminderType where
  parseJSON = Prelude.parseJSONText "EndOfMeetingReminderType"
