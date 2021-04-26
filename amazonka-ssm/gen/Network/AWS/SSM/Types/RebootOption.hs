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
-- Module      : Network.AWS.SSM.Types.RebootOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.RebootOption
  ( RebootOption
      ( ..,
        RebootOptionNoReboot,
        RebootOptionRebootIfNeeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RebootOption = RebootOption'
  { fromRebootOption ::
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

pattern RebootOptionNoReboot :: RebootOption
pattern RebootOptionNoReboot = RebootOption' "NoReboot"

pattern RebootOptionRebootIfNeeded :: RebootOption
pattern RebootOptionRebootIfNeeded = RebootOption' "RebootIfNeeded"

{-# COMPLETE
  RebootOptionNoReboot,
  RebootOptionRebootIfNeeded,
  RebootOption'
  #-}

instance Prelude.FromText RebootOption where
  parser = RebootOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText RebootOption where
  toText (RebootOption' x) = x

instance Prelude.Hashable RebootOption

instance Prelude.NFData RebootOption

instance Prelude.ToByteString RebootOption

instance Prelude.ToQuery RebootOption

instance Prelude.ToHeader RebootOption

instance Prelude.FromJSON RebootOption where
  parseJSON = Prelude.parseJSONText "RebootOption"
