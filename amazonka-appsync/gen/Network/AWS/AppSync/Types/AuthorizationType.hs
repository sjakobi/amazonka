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
-- Module      : Network.AWS.AppSync.Types.AuthorizationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.AuthorizationType
  ( AuthorizationType
      ( ..,
        AuthorizationTypeAWSIAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthorizationType = AuthorizationType'
  { fromAuthorizationType ::
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

pattern AuthorizationTypeAWSIAM :: AuthorizationType
pattern AuthorizationTypeAWSIAM = AuthorizationType' "AWS_IAM"

{-# COMPLETE
  AuthorizationTypeAWSIAM,
  AuthorizationType'
  #-}

instance Prelude.FromText AuthorizationType where
  parser = AuthorizationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthorizationType where
  toText (AuthorizationType' x) = x

instance Prelude.Hashable AuthorizationType

instance Prelude.NFData AuthorizationType

instance Prelude.ToByteString AuthorizationType

instance Prelude.ToQuery AuthorizationType

instance Prelude.ToHeader AuthorizationType

instance Prelude.ToJSON AuthorizationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthorizationType where
  parseJSON = Prelude.parseJSONText "AuthorizationType"
