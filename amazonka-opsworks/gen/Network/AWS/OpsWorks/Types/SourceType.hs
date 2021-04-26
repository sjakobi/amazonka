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
-- Module      : Network.AWS.OpsWorks.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.SourceType
  ( SourceType
      ( ..,
        SourceTypeArchive,
        SourceTypeGit,
        SourceTypeS3,
        SourceTypeSvn
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SourceType = SourceType'
  { fromSourceType ::
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

pattern SourceTypeArchive :: SourceType
pattern SourceTypeArchive = SourceType' "archive"

pattern SourceTypeGit :: SourceType
pattern SourceTypeGit = SourceType' "git"

pattern SourceTypeS3 :: SourceType
pattern SourceTypeS3 = SourceType' "s3"

pattern SourceTypeSvn :: SourceType
pattern SourceTypeSvn = SourceType' "svn"

{-# COMPLETE
  SourceTypeArchive,
  SourceTypeGit,
  SourceTypeS3,
  SourceTypeSvn,
  SourceType'
  #-}

instance Prelude.FromText SourceType where
  parser = SourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SourceType where
  toText (SourceType' x) = x

instance Prelude.Hashable SourceType

instance Prelude.NFData SourceType

instance Prelude.ToByteString SourceType

instance Prelude.ToQuery SourceType

instance Prelude.ToHeader SourceType

instance Prelude.ToJSON SourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SourceType where
  parseJSON = Prelude.parseJSONText "SourceType"
