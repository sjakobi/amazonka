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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
  ( ScalingActivityStatusCode
      ( ..,
        ScalingActivityStatusCodeFailed,
        ScalingActivityStatusCodeInProgress,
        ScalingActivityStatusCodeOverridden,
        ScalingActivityStatusCodePending,
        ScalingActivityStatusCodeSuccessful,
        ScalingActivityStatusCodeUnfulfilled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingActivityStatusCode = ScalingActivityStatusCode'
  { fromScalingActivityStatusCode ::
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

pattern ScalingActivityStatusCodeFailed :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeFailed = ScalingActivityStatusCode' "Failed"

pattern ScalingActivityStatusCodeInProgress :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeInProgress = ScalingActivityStatusCode' "InProgress"

pattern ScalingActivityStatusCodeOverridden :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeOverridden = ScalingActivityStatusCode' "Overridden"

pattern ScalingActivityStatusCodePending :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodePending = ScalingActivityStatusCode' "Pending"

pattern ScalingActivityStatusCodeSuccessful :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeSuccessful = ScalingActivityStatusCode' "Successful"

pattern ScalingActivityStatusCodeUnfulfilled :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeUnfulfilled = ScalingActivityStatusCode' "Unfulfilled"

{-# COMPLETE
  ScalingActivityStatusCodeFailed,
  ScalingActivityStatusCodeInProgress,
  ScalingActivityStatusCodeOverridden,
  ScalingActivityStatusCodePending,
  ScalingActivityStatusCodeSuccessful,
  ScalingActivityStatusCodeUnfulfilled,
  ScalingActivityStatusCode'
  #-}

instance Prelude.FromText ScalingActivityStatusCode where
  parser = ScalingActivityStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingActivityStatusCode where
  toText (ScalingActivityStatusCode' x) = x

instance Prelude.Hashable ScalingActivityStatusCode

instance Prelude.NFData ScalingActivityStatusCode

instance Prelude.ToByteString ScalingActivityStatusCode

instance Prelude.ToQuery ScalingActivityStatusCode

instance Prelude.ToHeader ScalingActivityStatusCode

instance Prelude.FromJSON ScalingActivityStatusCode where
  parseJSON = Prelude.parseJSONText "ScalingActivityStatusCode"
