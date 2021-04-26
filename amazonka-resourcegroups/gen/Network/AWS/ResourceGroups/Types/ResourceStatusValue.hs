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
-- Module      : Network.AWS.ResourceGroups.Types.ResourceStatusValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.ResourceStatusValue
  ( ResourceStatusValue
      ( ..,
        ResourceStatusValuePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceStatusValue = ResourceStatusValue'
  { fromResourceStatusValue ::
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

pattern ResourceStatusValuePENDING :: ResourceStatusValue
pattern ResourceStatusValuePENDING = ResourceStatusValue' "PENDING"

{-# COMPLETE
  ResourceStatusValuePENDING,
  ResourceStatusValue'
  #-}

instance Prelude.FromText ResourceStatusValue where
  parser = ResourceStatusValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceStatusValue where
  toText (ResourceStatusValue' x) = x

instance Prelude.Hashable ResourceStatusValue

instance Prelude.NFData ResourceStatusValue

instance Prelude.ToByteString ResourceStatusValue

instance Prelude.ToQuery ResourceStatusValue

instance Prelude.ToHeader ResourceStatusValue

instance Prelude.FromJSON ResourceStatusValue where
  parseJSON = Prelude.parseJSONText "ResourceStatusValue"
