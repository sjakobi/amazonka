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
-- Module      : Network.AWS.RDS.Types.AuthScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.AuthScheme
  ( AuthScheme
      ( ..,
        AuthSchemeSECRETS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthScheme = AuthScheme'
  { fromAuthScheme ::
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

pattern AuthSchemeSECRETS :: AuthScheme
pattern AuthSchemeSECRETS = AuthScheme' "SECRETS"

{-# COMPLETE
  AuthSchemeSECRETS,
  AuthScheme'
  #-}

instance Prelude.FromText AuthScheme where
  parser = AuthScheme' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthScheme where
  toText (AuthScheme' x) = x

instance Prelude.Hashable AuthScheme

instance Prelude.NFData AuthScheme

instance Prelude.ToByteString AuthScheme

instance Prelude.ToQuery AuthScheme

instance Prelude.ToHeader AuthScheme

instance Prelude.FromXML AuthScheme where
  parseXML = Prelude.parseXMLText "AuthScheme"
