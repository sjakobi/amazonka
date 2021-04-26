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
-- Module      : Network.AWS.IoT.Types.AbortAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AbortAction
  ( AbortAction
      ( ..,
        AbortActionCANCEL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AbortAction = AbortAction'
  { fromAbortAction ::
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

pattern AbortActionCANCEL :: AbortAction
pattern AbortActionCANCEL = AbortAction' "CANCEL"

{-# COMPLETE
  AbortActionCANCEL,
  AbortAction'
  #-}

instance Prelude.FromText AbortAction where
  parser = AbortAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText AbortAction where
  toText (AbortAction' x) = x

instance Prelude.Hashable AbortAction

instance Prelude.NFData AbortAction

instance Prelude.ToByteString AbortAction

instance Prelude.ToQuery AbortAction

instance Prelude.ToHeader AbortAction

instance Prelude.ToJSON AbortAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AbortAction where
  parseJSON = Prelude.parseJSONText "AbortAction"
