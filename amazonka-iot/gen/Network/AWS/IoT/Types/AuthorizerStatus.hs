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
-- Module      : Network.AWS.IoT.Types.AuthorizerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuthorizerStatus
  ( AuthorizerStatus
      ( ..,
        AuthorizerStatusACTIVE,
        AuthorizerStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthorizerStatus = AuthorizerStatus'
  { fromAuthorizerStatus ::
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

pattern AuthorizerStatusACTIVE :: AuthorizerStatus
pattern AuthorizerStatusACTIVE = AuthorizerStatus' "ACTIVE"

pattern AuthorizerStatusINACTIVE :: AuthorizerStatus
pattern AuthorizerStatusINACTIVE = AuthorizerStatus' "INACTIVE"

{-# COMPLETE
  AuthorizerStatusACTIVE,
  AuthorizerStatusINACTIVE,
  AuthorizerStatus'
  #-}

instance Prelude.FromText AuthorizerStatus where
  parser = AuthorizerStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthorizerStatus where
  toText (AuthorizerStatus' x) = x

instance Prelude.Hashable AuthorizerStatus

instance Prelude.NFData AuthorizerStatus

instance Prelude.ToByteString AuthorizerStatus

instance Prelude.ToQuery AuthorizerStatus

instance Prelude.ToHeader AuthorizerStatus

instance Prelude.ToJSON AuthorizerStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthorizerStatus where
  parseJSON = Prelude.parseJSONText "AuthorizerStatus"
