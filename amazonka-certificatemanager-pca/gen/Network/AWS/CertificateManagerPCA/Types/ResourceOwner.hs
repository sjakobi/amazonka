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
-- Module      : Network.AWS.CertificateManagerPCA.Types.ResourceOwner
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ResourceOwner
  ( ResourceOwner
      ( ..,
        ResourceOwnerOTHERACCOUNTS,
        ResourceOwnerSELF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceOwner = ResourceOwner'
  { fromResourceOwner ::
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

pattern ResourceOwnerOTHERACCOUNTS :: ResourceOwner
pattern ResourceOwnerOTHERACCOUNTS = ResourceOwner' "OTHER_ACCOUNTS"

pattern ResourceOwnerSELF :: ResourceOwner
pattern ResourceOwnerSELF = ResourceOwner' "SELF"

{-# COMPLETE
  ResourceOwnerOTHERACCOUNTS,
  ResourceOwnerSELF,
  ResourceOwner'
  #-}

instance Prelude.FromText ResourceOwner where
  parser = ResourceOwner' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceOwner where
  toText (ResourceOwner' x) = x

instance Prelude.Hashable ResourceOwner

instance Prelude.NFData ResourceOwner

instance Prelude.ToByteString ResourceOwner

instance Prelude.ToQuery ResourceOwner

instance Prelude.ToHeader ResourceOwner

instance Prelude.ToJSON ResourceOwner where
  toJSON = Prelude.toJSONText
