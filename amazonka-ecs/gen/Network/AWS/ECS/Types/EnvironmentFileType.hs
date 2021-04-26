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
-- Module      : Network.AWS.ECS.Types.EnvironmentFileType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.EnvironmentFileType
  ( EnvironmentFileType
      ( ..,
        EnvironmentFileTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentFileType = EnvironmentFileType'
  { fromEnvironmentFileType ::
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

pattern EnvironmentFileTypeS3 :: EnvironmentFileType
pattern EnvironmentFileTypeS3 = EnvironmentFileType' "s3"

{-# COMPLETE
  EnvironmentFileTypeS3,
  EnvironmentFileType'
  #-}

instance Prelude.FromText EnvironmentFileType where
  parser = EnvironmentFileType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentFileType where
  toText (EnvironmentFileType' x) = x

instance Prelude.Hashable EnvironmentFileType

instance Prelude.NFData EnvironmentFileType

instance Prelude.ToByteString EnvironmentFileType

instance Prelude.ToQuery EnvironmentFileType

instance Prelude.ToHeader EnvironmentFileType

instance Prelude.ToJSON EnvironmentFileType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EnvironmentFileType where
  parseJSON = Prelude.parseJSONText "EnvironmentFileType"
