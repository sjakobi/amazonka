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
-- Module      : Network.AWS.CodePipeline.Types.ActionCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionCategory
  ( ActionCategory
      ( ..,
        ActionCategoryApproval,
        ActionCategoryBuild,
        ActionCategoryDeploy,
        ActionCategoryInvoke,
        ActionCategorySource,
        ActionCategoryTest
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionCategory = ActionCategory'
  { fromActionCategory ::
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

pattern ActionCategoryApproval :: ActionCategory
pattern ActionCategoryApproval = ActionCategory' "Approval"

pattern ActionCategoryBuild :: ActionCategory
pattern ActionCategoryBuild = ActionCategory' "Build"

pattern ActionCategoryDeploy :: ActionCategory
pattern ActionCategoryDeploy = ActionCategory' "Deploy"

pattern ActionCategoryInvoke :: ActionCategory
pattern ActionCategoryInvoke = ActionCategory' "Invoke"

pattern ActionCategorySource :: ActionCategory
pattern ActionCategorySource = ActionCategory' "Source"

pattern ActionCategoryTest :: ActionCategory
pattern ActionCategoryTest = ActionCategory' "Test"

{-# COMPLETE
  ActionCategoryApproval,
  ActionCategoryBuild,
  ActionCategoryDeploy,
  ActionCategoryInvoke,
  ActionCategorySource,
  ActionCategoryTest,
  ActionCategory'
  #-}

instance Prelude.FromText ActionCategory where
  parser = ActionCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionCategory where
  toText (ActionCategory' x) = x

instance Prelude.Hashable ActionCategory

instance Prelude.NFData ActionCategory

instance Prelude.ToByteString ActionCategory

instance Prelude.ToQuery ActionCategory

instance Prelude.ToHeader ActionCategory

instance Prelude.ToJSON ActionCategory where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionCategory where
  parseJSON = Prelude.parseJSONText "ActionCategory"
