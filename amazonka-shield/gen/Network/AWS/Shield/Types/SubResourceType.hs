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
-- Module      : Network.AWS.Shield.Types.SubResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.SubResourceType
  ( SubResourceType
      ( ..,
        SubResourceTypeIP,
        SubResourceTypeURL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SubResourceType = SubResourceType'
  { fromSubResourceType ::
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

pattern SubResourceTypeIP :: SubResourceType
pattern SubResourceTypeIP = SubResourceType' "IP"

pattern SubResourceTypeURL :: SubResourceType
pattern SubResourceTypeURL = SubResourceType' "URL"

{-# COMPLETE
  SubResourceTypeIP,
  SubResourceTypeURL,
  SubResourceType'
  #-}

instance Prelude.FromText SubResourceType where
  parser = SubResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubResourceType where
  toText (SubResourceType' x) = x

instance Prelude.Hashable SubResourceType

instance Prelude.NFData SubResourceType

instance Prelude.ToByteString SubResourceType

instance Prelude.ToQuery SubResourceType

instance Prelude.ToHeader SubResourceType

instance Prelude.FromJSON SubResourceType where
  parseJSON = Prelude.parseJSONText "SubResourceType"
