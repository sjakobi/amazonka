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
-- Module      : Network.AWS.CodeBuild.Types.ServerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ServerType
  ( ServerType
      ( ..,
        ServerTypeBITBUCKET,
        ServerTypeGITHUB,
        ServerTypeGITHUBENTERPRISE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServerType = ServerType'
  { fromServerType ::
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

pattern ServerTypeBITBUCKET :: ServerType
pattern ServerTypeBITBUCKET = ServerType' "BITBUCKET"

pattern ServerTypeGITHUB :: ServerType
pattern ServerTypeGITHUB = ServerType' "GITHUB"

pattern ServerTypeGITHUBENTERPRISE :: ServerType
pattern ServerTypeGITHUBENTERPRISE = ServerType' "GITHUB_ENTERPRISE"

{-# COMPLETE
  ServerTypeBITBUCKET,
  ServerTypeGITHUB,
  ServerTypeGITHUBENTERPRISE,
  ServerType'
  #-}

instance Prelude.FromText ServerType where
  parser = ServerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerType where
  toText (ServerType' x) = x

instance Prelude.Hashable ServerType

instance Prelude.NFData ServerType

instance Prelude.ToByteString ServerType

instance Prelude.ToQuery ServerType

instance Prelude.ToHeader ServerType

instance Prelude.ToJSON ServerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServerType where
  parseJSON = Prelude.parseJSONText "ServerType"
