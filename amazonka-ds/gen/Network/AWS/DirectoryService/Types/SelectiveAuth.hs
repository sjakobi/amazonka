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
-- Module      : Network.AWS.DirectoryService.Types.SelectiveAuth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SelectiveAuth
  ( SelectiveAuth
      ( ..,
        SelectiveAuthDisabled,
        SelectiveAuthEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SelectiveAuth = SelectiveAuth'
  { fromSelectiveAuth ::
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

pattern SelectiveAuthDisabled :: SelectiveAuth
pattern SelectiveAuthDisabled = SelectiveAuth' "Disabled"

pattern SelectiveAuthEnabled :: SelectiveAuth
pattern SelectiveAuthEnabled = SelectiveAuth' "Enabled"

{-# COMPLETE
  SelectiveAuthDisabled,
  SelectiveAuthEnabled,
  SelectiveAuth'
  #-}

instance Prelude.FromText SelectiveAuth where
  parser = SelectiveAuth' Prelude.<$> Prelude.takeText

instance Prelude.ToText SelectiveAuth where
  toText (SelectiveAuth' x) = x

instance Prelude.Hashable SelectiveAuth

instance Prelude.NFData SelectiveAuth

instance Prelude.ToByteString SelectiveAuth

instance Prelude.ToQuery SelectiveAuth

instance Prelude.ToHeader SelectiveAuth

instance Prelude.ToJSON SelectiveAuth where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SelectiveAuth where
  parseJSON = Prelude.parseJSONText "SelectiveAuth"
