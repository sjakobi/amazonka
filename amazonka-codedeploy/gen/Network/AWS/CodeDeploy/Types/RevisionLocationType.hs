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
-- Module      : Network.AWS.CodeDeploy.Types.RevisionLocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.RevisionLocationType
  ( RevisionLocationType
      ( ..,
        RevisionLocationTypeAppSpecContent,
        RevisionLocationTypeGitHub,
        RevisionLocationTypeS3,
        RevisionLocationTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RevisionLocationType = RevisionLocationType'
  { fromRevisionLocationType ::
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

pattern RevisionLocationTypeAppSpecContent :: RevisionLocationType
pattern RevisionLocationTypeAppSpecContent = RevisionLocationType' "AppSpecContent"

pattern RevisionLocationTypeGitHub :: RevisionLocationType
pattern RevisionLocationTypeGitHub = RevisionLocationType' "GitHub"

pattern RevisionLocationTypeS3 :: RevisionLocationType
pattern RevisionLocationTypeS3 = RevisionLocationType' "S3"

pattern RevisionLocationTypeString :: RevisionLocationType
pattern RevisionLocationTypeString = RevisionLocationType' "String"

{-# COMPLETE
  RevisionLocationTypeAppSpecContent,
  RevisionLocationTypeGitHub,
  RevisionLocationTypeS3,
  RevisionLocationTypeString,
  RevisionLocationType'
  #-}

instance Prelude.FromText RevisionLocationType where
  parser = RevisionLocationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RevisionLocationType where
  toText (RevisionLocationType' x) = x

instance Prelude.Hashable RevisionLocationType

instance Prelude.NFData RevisionLocationType

instance Prelude.ToByteString RevisionLocationType

instance Prelude.ToQuery RevisionLocationType

instance Prelude.ToHeader RevisionLocationType

instance Prelude.ToJSON RevisionLocationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RevisionLocationType where
  parseJSON = Prelude.parseJSONText "RevisionLocationType"
