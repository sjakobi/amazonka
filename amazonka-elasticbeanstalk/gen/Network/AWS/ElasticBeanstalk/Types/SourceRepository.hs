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
-- Module      : Network.AWS.ElasticBeanstalk.Types.SourceRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.SourceRepository
  ( SourceRepository
      ( ..,
        SourceRepositoryCodeCommit,
        SourceRepositoryS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SourceRepository = SourceRepository'
  { fromSourceRepository ::
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

pattern SourceRepositoryCodeCommit :: SourceRepository
pattern SourceRepositoryCodeCommit = SourceRepository' "CodeCommit"

pattern SourceRepositoryS3 :: SourceRepository
pattern SourceRepositoryS3 = SourceRepository' "S3"

{-# COMPLETE
  SourceRepositoryCodeCommit,
  SourceRepositoryS3,
  SourceRepository'
  #-}

instance Prelude.FromText SourceRepository where
  parser = SourceRepository' Prelude.<$> Prelude.takeText

instance Prelude.ToText SourceRepository where
  toText (SourceRepository' x) = x

instance Prelude.Hashable SourceRepository

instance Prelude.NFData SourceRepository

instance Prelude.ToByteString SourceRepository

instance Prelude.ToQuery SourceRepository

instance Prelude.ToHeader SourceRepository

instance Prelude.FromXML SourceRepository where
  parseXML = Prelude.parseXMLText "SourceRepository"
