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
-- Module      : Network.AWS.Lightsail.Types.AddOnType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AddOnType
  ( AddOnType
      ( ..,
        AddOnTypeAutoSnapshot
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AddOnType = AddOnType'
  { fromAddOnType ::
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

pattern AddOnTypeAutoSnapshot :: AddOnType
pattern AddOnTypeAutoSnapshot = AddOnType' "AutoSnapshot"

{-# COMPLETE
  AddOnTypeAutoSnapshot,
  AddOnType'
  #-}

instance Prelude.FromText AddOnType where
  parser = AddOnType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AddOnType where
  toText (AddOnType' x) = x

instance Prelude.Hashable AddOnType

instance Prelude.NFData AddOnType

instance Prelude.ToByteString AddOnType

instance Prelude.ToQuery AddOnType

instance Prelude.ToHeader AddOnType

instance Prelude.ToJSON AddOnType where
  toJSON = Prelude.toJSONText
