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
-- Module      : Network.AWS.SSM.Types.SignalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SignalType
  ( SignalType
      ( ..,
        SignalTypeApprove,
        SignalTypeReject,
        SignalTypeResume,
        SignalTypeStartStep,
        SignalTypeStopStep
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SignalType = SignalType'
  { fromSignalType ::
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

pattern SignalTypeApprove :: SignalType
pattern SignalTypeApprove = SignalType' "Approve"

pattern SignalTypeReject :: SignalType
pattern SignalTypeReject = SignalType' "Reject"

pattern SignalTypeResume :: SignalType
pattern SignalTypeResume = SignalType' "Resume"

pattern SignalTypeStartStep :: SignalType
pattern SignalTypeStartStep = SignalType' "StartStep"

pattern SignalTypeStopStep :: SignalType
pattern SignalTypeStopStep = SignalType' "StopStep"

{-# COMPLETE
  SignalTypeApprove,
  SignalTypeReject,
  SignalTypeResume,
  SignalTypeStartStep,
  SignalTypeStopStep,
  SignalType'
  #-}

instance Prelude.FromText SignalType where
  parser = SignalType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SignalType where
  toText (SignalType' x) = x

instance Prelude.Hashable SignalType

instance Prelude.NFData SignalType

instance Prelude.ToByteString SignalType

instance Prelude.ToQuery SignalType

instance Prelude.ToHeader SignalType

instance Prelude.ToJSON SignalType where
  toJSON = Prelude.toJSONText
