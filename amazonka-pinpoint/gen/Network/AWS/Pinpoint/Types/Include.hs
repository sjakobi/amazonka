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
-- Module      : Network.AWS.Pinpoint.Types.Include
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Include
  ( Include
      ( ..,
        IncludeALL,
        IncludeANY,
        IncludeNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Include = Include'
  { fromInclude ::
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

pattern IncludeALL :: Include
pattern IncludeALL = Include' "ALL"

pattern IncludeANY :: Include
pattern IncludeANY = Include' "ANY"

pattern IncludeNONE :: Include
pattern IncludeNONE = Include' "NONE"

{-# COMPLETE
  IncludeALL,
  IncludeANY,
  IncludeNONE,
  Include'
  #-}

instance Prelude.FromText Include where
  parser = Include' Prelude.<$> Prelude.takeText

instance Prelude.ToText Include where
  toText (Include' x) = x

instance Prelude.Hashable Include

instance Prelude.NFData Include

instance Prelude.ToByteString Include

instance Prelude.ToQuery Include

instance Prelude.ToHeader Include

instance Prelude.ToJSON Include where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Include where
  parseJSON = Prelude.parseJSONText "Include"
