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
-- Module      : Network.AWS.CodeCommit.Types.OverrideStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.OverrideStatus
  ( OverrideStatus
      ( ..,
        OverrideStatusOVERRIDE,
        OverrideStatusREVOKE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OverrideStatus = OverrideStatus'
  { fromOverrideStatus ::
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

pattern OverrideStatusOVERRIDE :: OverrideStatus
pattern OverrideStatusOVERRIDE = OverrideStatus' "OVERRIDE"

pattern OverrideStatusREVOKE :: OverrideStatus
pattern OverrideStatusREVOKE = OverrideStatus' "REVOKE"

{-# COMPLETE
  OverrideStatusOVERRIDE,
  OverrideStatusREVOKE,
  OverrideStatus'
  #-}

instance Prelude.FromText OverrideStatus where
  parser = OverrideStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OverrideStatus where
  toText (OverrideStatus' x) = x

instance Prelude.Hashable OverrideStatus

instance Prelude.NFData OverrideStatus

instance Prelude.ToByteString OverrideStatus

instance Prelude.ToQuery OverrideStatus

instance Prelude.ToHeader OverrideStatus

instance Prelude.ToJSON OverrideStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OverrideStatus where
  parseJSON = Prelude.parseJSONText "OverrideStatus"
