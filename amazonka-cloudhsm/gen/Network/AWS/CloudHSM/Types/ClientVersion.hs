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
-- Module      : Network.AWS.CloudHSM.Types.ClientVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.ClientVersion
  ( ClientVersion
      ( ..,
        ClientVersionD5_1,
        ClientVersionD5_3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClientVersion = ClientVersion'
  { fromClientVersion ::
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

pattern ClientVersionD5_1 :: ClientVersion
pattern ClientVersionD5_1 = ClientVersion' "5.1"

pattern ClientVersionD5_3 :: ClientVersion
pattern ClientVersionD5_3 = ClientVersion' "5.3"

{-# COMPLETE
  ClientVersionD5_1,
  ClientVersionD5_3,
  ClientVersion'
  #-}

instance Prelude.FromText ClientVersion where
  parser = ClientVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientVersion where
  toText (ClientVersion' x) = x

instance Prelude.Hashable ClientVersion

instance Prelude.NFData ClientVersion

instance Prelude.ToByteString ClientVersion

instance Prelude.ToQuery ClientVersion

instance Prelude.ToHeader ClientVersion

instance Prelude.ToJSON ClientVersion where
  toJSON = Prelude.toJSONText
