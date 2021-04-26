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
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingStatusCode
  ( ScalingStatusCode
      ( ..,
        ScalingStatusCodeActive,
        ScalingStatusCodeInactive,
        ScalingStatusCodePartiallyActive
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingStatusCode = ScalingStatusCode'
  { fromScalingStatusCode ::
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

pattern ScalingStatusCodeActive :: ScalingStatusCode
pattern ScalingStatusCodeActive = ScalingStatusCode' "Active"

pattern ScalingStatusCodeInactive :: ScalingStatusCode
pattern ScalingStatusCodeInactive = ScalingStatusCode' "Inactive"

pattern ScalingStatusCodePartiallyActive :: ScalingStatusCode
pattern ScalingStatusCodePartiallyActive = ScalingStatusCode' "PartiallyActive"

{-# COMPLETE
  ScalingStatusCodeActive,
  ScalingStatusCodeInactive,
  ScalingStatusCodePartiallyActive,
  ScalingStatusCode'
  #-}

instance Prelude.FromText ScalingStatusCode where
  parser = ScalingStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingStatusCode where
  toText (ScalingStatusCode' x) = x

instance Prelude.Hashable ScalingStatusCode

instance Prelude.NFData ScalingStatusCode

instance Prelude.ToByteString ScalingStatusCode

instance Prelude.ToQuery ScalingStatusCode

instance Prelude.ToHeader ScalingStatusCode

instance Prelude.FromJSON ScalingStatusCode where
  parseJSON = Prelude.parseJSONText "ScalingStatusCode"
