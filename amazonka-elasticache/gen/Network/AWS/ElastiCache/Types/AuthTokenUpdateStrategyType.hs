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
-- Module      : Network.AWS.ElastiCache.Types.AuthTokenUpdateStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AuthTokenUpdateStrategyType
  ( AuthTokenUpdateStrategyType
      ( ..,
        AuthTokenUpdateStrategyTypeDELETE,
        AuthTokenUpdateStrategyTypeROTATE,
        AuthTokenUpdateStrategyTypeSET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthTokenUpdateStrategyType = AuthTokenUpdateStrategyType'
  { fromAuthTokenUpdateStrategyType ::
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

pattern AuthTokenUpdateStrategyTypeDELETE :: AuthTokenUpdateStrategyType
pattern AuthTokenUpdateStrategyTypeDELETE = AuthTokenUpdateStrategyType' "DELETE"

pattern AuthTokenUpdateStrategyTypeROTATE :: AuthTokenUpdateStrategyType
pattern AuthTokenUpdateStrategyTypeROTATE = AuthTokenUpdateStrategyType' "ROTATE"

pattern AuthTokenUpdateStrategyTypeSET :: AuthTokenUpdateStrategyType
pattern AuthTokenUpdateStrategyTypeSET = AuthTokenUpdateStrategyType' "SET"

{-# COMPLETE
  AuthTokenUpdateStrategyTypeDELETE,
  AuthTokenUpdateStrategyTypeROTATE,
  AuthTokenUpdateStrategyTypeSET,
  AuthTokenUpdateStrategyType'
  #-}

instance Prelude.FromText AuthTokenUpdateStrategyType where
  parser = AuthTokenUpdateStrategyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthTokenUpdateStrategyType where
  toText (AuthTokenUpdateStrategyType' x) = x

instance Prelude.Hashable AuthTokenUpdateStrategyType

instance Prelude.NFData AuthTokenUpdateStrategyType

instance Prelude.ToByteString AuthTokenUpdateStrategyType

instance Prelude.ToQuery AuthTokenUpdateStrategyType

instance Prelude.ToHeader AuthTokenUpdateStrategyType
