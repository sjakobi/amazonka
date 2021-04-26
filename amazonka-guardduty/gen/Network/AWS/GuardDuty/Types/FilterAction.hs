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
-- Module      : Network.AWS.GuardDuty.Types.FilterAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.FilterAction
  ( FilterAction
      ( ..,
        FilterActionARCHIVE,
        FilterActionNOOP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FilterAction = FilterAction'
  { fromFilterAction ::
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

pattern FilterActionARCHIVE :: FilterAction
pattern FilterActionARCHIVE = FilterAction' "ARCHIVE"

pattern FilterActionNOOP :: FilterAction
pattern FilterActionNOOP = FilterAction' "NOOP"

{-# COMPLETE
  FilterActionARCHIVE,
  FilterActionNOOP,
  FilterAction'
  #-}

instance Prelude.FromText FilterAction where
  parser = FilterAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText FilterAction where
  toText (FilterAction' x) = x

instance Prelude.Hashable FilterAction

instance Prelude.NFData FilterAction

instance Prelude.ToByteString FilterAction

instance Prelude.ToQuery FilterAction

instance Prelude.ToHeader FilterAction

instance Prelude.ToJSON FilterAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FilterAction where
  parseJSON = Prelude.parseJSONText "FilterAction"
