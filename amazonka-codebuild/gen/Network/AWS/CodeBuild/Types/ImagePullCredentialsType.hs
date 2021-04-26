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
-- Module      : Network.AWS.CodeBuild.Types.ImagePullCredentialsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ImagePullCredentialsType
  ( ImagePullCredentialsType
      ( ..,
        ImagePullCredentialsTypeCODEBUILD,
        ImagePullCredentialsTypeSERVICEROLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImagePullCredentialsType = ImagePullCredentialsType'
  { fromImagePullCredentialsType ::
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

pattern ImagePullCredentialsTypeCODEBUILD :: ImagePullCredentialsType
pattern ImagePullCredentialsTypeCODEBUILD = ImagePullCredentialsType' "CODEBUILD"

pattern ImagePullCredentialsTypeSERVICEROLE :: ImagePullCredentialsType
pattern ImagePullCredentialsTypeSERVICEROLE = ImagePullCredentialsType' "SERVICE_ROLE"

{-# COMPLETE
  ImagePullCredentialsTypeCODEBUILD,
  ImagePullCredentialsTypeSERVICEROLE,
  ImagePullCredentialsType'
  #-}

instance Prelude.FromText ImagePullCredentialsType where
  parser = ImagePullCredentialsType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImagePullCredentialsType where
  toText (ImagePullCredentialsType' x) = x

instance Prelude.Hashable ImagePullCredentialsType

instance Prelude.NFData ImagePullCredentialsType

instance Prelude.ToByteString ImagePullCredentialsType

instance Prelude.ToQuery ImagePullCredentialsType

instance Prelude.ToHeader ImagePullCredentialsType

instance Prelude.ToJSON ImagePullCredentialsType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ImagePullCredentialsType where
  parseJSON = Prelude.parseJSONText "ImagePullCredentialsType"
