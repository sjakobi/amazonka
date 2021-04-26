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
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
  ( ScalingPlanStatusCode
      ( ..,
        ScalingPlanStatusCodeActive,
        ScalingPlanStatusCodeActiveWithProblems,
        ScalingPlanStatusCodeCreationFailed,
        ScalingPlanStatusCodeCreationInProgress,
        ScalingPlanStatusCodeDeletionFailed,
        ScalingPlanStatusCodeDeletionInProgress,
        ScalingPlanStatusCodeUpdateFailed,
        ScalingPlanStatusCodeUpdateInProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingPlanStatusCode = ScalingPlanStatusCode'
  { fromScalingPlanStatusCode ::
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

pattern ScalingPlanStatusCodeActive :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeActive = ScalingPlanStatusCode' "Active"

pattern ScalingPlanStatusCodeActiveWithProblems :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeActiveWithProblems = ScalingPlanStatusCode' "ActiveWithProblems"

pattern ScalingPlanStatusCodeCreationFailed :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeCreationFailed = ScalingPlanStatusCode' "CreationFailed"

pattern ScalingPlanStatusCodeCreationInProgress :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeCreationInProgress = ScalingPlanStatusCode' "CreationInProgress"

pattern ScalingPlanStatusCodeDeletionFailed :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeDeletionFailed = ScalingPlanStatusCode' "DeletionFailed"

pattern ScalingPlanStatusCodeDeletionInProgress :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeDeletionInProgress = ScalingPlanStatusCode' "DeletionInProgress"

pattern ScalingPlanStatusCodeUpdateFailed :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeUpdateFailed = ScalingPlanStatusCode' "UpdateFailed"

pattern ScalingPlanStatusCodeUpdateInProgress :: ScalingPlanStatusCode
pattern ScalingPlanStatusCodeUpdateInProgress = ScalingPlanStatusCode' "UpdateInProgress"

{-# COMPLETE
  ScalingPlanStatusCodeActive,
  ScalingPlanStatusCodeActiveWithProblems,
  ScalingPlanStatusCodeCreationFailed,
  ScalingPlanStatusCodeCreationInProgress,
  ScalingPlanStatusCodeDeletionFailed,
  ScalingPlanStatusCodeDeletionInProgress,
  ScalingPlanStatusCodeUpdateFailed,
  ScalingPlanStatusCodeUpdateInProgress,
  ScalingPlanStatusCode'
  #-}

instance Prelude.FromText ScalingPlanStatusCode where
  parser = ScalingPlanStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingPlanStatusCode where
  toText (ScalingPlanStatusCode' x) = x

instance Prelude.Hashable ScalingPlanStatusCode

instance Prelude.NFData ScalingPlanStatusCode

instance Prelude.ToByteString ScalingPlanStatusCode

instance Prelude.ToQuery ScalingPlanStatusCode

instance Prelude.ToHeader ScalingPlanStatusCode

instance Prelude.FromJSON ScalingPlanStatusCode where
  parseJSON = Prelude.parseJSONText "ScalingPlanStatusCode"
