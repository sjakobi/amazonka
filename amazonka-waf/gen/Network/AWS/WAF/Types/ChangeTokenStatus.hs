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
-- Module      : Network.AWS.WAF.Types.ChangeTokenStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.ChangeTokenStatus
  ( ChangeTokenStatus
      ( ..,
        ChangeTokenStatusINSYNC,
        ChangeTokenStatusPENDING,
        ChangeTokenStatusPROVISIONED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeTokenStatus = ChangeTokenStatus'
  { fromChangeTokenStatus ::
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

pattern ChangeTokenStatusINSYNC :: ChangeTokenStatus
pattern ChangeTokenStatusINSYNC = ChangeTokenStatus' "INSYNC"

pattern ChangeTokenStatusPENDING :: ChangeTokenStatus
pattern ChangeTokenStatusPENDING = ChangeTokenStatus' "PENDING"

pattern ChangeTokenStatusPROVISIONED :: ChangeTokenStatus
pattern ChangeTokenStatusPROVISIONED = ChangeTokenStatus' "PROVISIONED"

{-# COMPLETE
  ChangeTokenStatusINSYNC,
  ChangeTokenStatusPENDING,
  ChangeTokenStatusPROVISIONED,
  ChangeTokenStatus'
  #-}

instance Prelude.FromText ChangeTokenStatus where
  parser = ChangeTokenStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeTokenStatus where
  toText (ChangeTokenStatus' x) = x

instance Prelude.Hashable ChangeTokenStatus

instance Prelude.NFData ChangeTokenStatus

instance Prelude.ToByteString ChangeTokenStatus

instance Prelude.ToQuery ChangeTokenStatus

instance Prelude.ToHeader ChangeTokenStatus

instance Prelude.FromJSON ChangeTokenStatus where
  parseJSON = Prelude.parseJSONText "ChangeTokenStatus"
