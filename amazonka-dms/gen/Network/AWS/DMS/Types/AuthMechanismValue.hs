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
-- Module      : Network.AWS.DMS.Types.AuthMechanismValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.AuthMechanismValue
  ( AuthMechanismValue
      ( ..,
        AuthMechanismValueDefault,
        AuthMechanismValueMongodbCr,
        AuthMechanismValueScramSha1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthMechanismValue = AuthMechanismValue'
  { fromAuthMechanismValue ::
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

pattern AuthMechanismValueDefault :: AuthMechanismValue
pattern AuthMechanismValueDefault = AuthMechanismValue' "default"

pattern AuthMechanismValueMongodbCr :: AuthMechanismValue
pattern AuthMechanismValueMongodbCr = AuthMechanismValue' "mongodb_cr"

pattern AuthMechanismValueScramSha1 :: AuthMechanismValue
pattern AuthMechanismValueScramSha1 = AuthMechanismValue' "scram_sha_1"

{-# COMPLETE
  AuthMechanismValueDefault,
  AuthMechanismValueMongodbCr,
  AuthMechanismValueScramSha1,
  AuthMechanismValue'
  #-}

instance Prelude.FromText AuthMechanismValue where
  parser = AuthMechanismValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthMechanismValue where
  toText (AuthMechanismValue' x) = x

instance Prelude.Hashable AuthMechanismValue

instance Prelude.NFData AuthMechanismValue

instance Prelude.ToByteString AuthMechanismValue

instance Prelude.ToQuery AuthMechanismValue

instance Prelude.ToHeader AuthMechanismValue

instance Prelude.ToJSON AuthMechanismValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthMechanismValue where
  parseJSON = Prelude.parseJSONText "AuthMechanismValue"
