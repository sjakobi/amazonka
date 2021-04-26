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
-- Module      : Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureCode
  ( NotifyWorkersFailureCode
      ( ..,
        NotifyWorkersFailureCodeHardFailure,
        NotifyWorkersFailureCodeSoftFailure
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotifyWorkersFailureCode = NotifyWorkersFailureCode'
  { fromNotifyWorkersFailureCode ::
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

pattern NotifyWorkersFailureCodeHardFailure :: NotifyWorkersFailureCode
pattern NotifyWorkersFailureCodeHardFailure = NotifyWorkersFailureCode' "HardFailure"

pattern NotifyWorkersFailureCodeSoftFailure :: NotifyWorkersFailureCode
pattern NotifyWorkersFailureCodeSoftFailure = NotifyWorkersFailureCode' "SoftFailure"

{-# COMPLETE
  NotifyWorkersFailureCodeHardFailure,
  NotifyWorkersFailureCodeSoftFailure,
  NotifyWorkersFailureCode'
  #-}

instance Prelude.FromText NotifyWorkersFailureCode where
  parser = NotifyWorkersFailureCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotifyWorkersFailureCode where
  toText (NotifyWorkersFailureCode' x) = x

instance Prelude.Hashable NotifyWorkersFailureCode

instance Prelude.NFData NotifyWorkersFailureCode

instance Prelude.ToByteString NotifyWorkersFailureCode

instance Prelude.ToQuery NotifyWorkersFailureCode

instance Prelude.ToHeader NotifyWorkersFailureCode

instance Prelude.FromJSON NotifyWorkersFailureCode where
  parseJSON = Prelude.parseJSONText "NotifyWorkersFailureCode"
