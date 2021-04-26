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
-- Module      : Network.AWS.EC2.Types.HttpTokensState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HttpTokensState
  ( HttpTokensState
      ( ..,
        HttpTokensStateOptional,
        HttpTokensStateRequired
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype HttpTokensState = HttpTokensState'
  { fromHttpTokensState ::
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

pattern HttpTokensStateOptional :: HttpTokensState
pattern HttpTokensStateOptional = HttpTokensState' "optional"

pattern HttpTokensStateRequired :: HttpTokensState
pattern HttpTokensStateRequired = HttpTokensState' "required"

{-# COMPLETE
  HttpTokensStateOptional,
  HttpTokensStateRequired,
  HttpTokensState'
  #-}

instance Prelude.FromText HttpTokensState where
  parser = HttpTokensState' Prelude.<$> Prelude.takeText

instance Prelude.ToText HttpTokensState where
  toText (HttpTokensState' x) = x

instance Prelude.Hashable HttpTokensState

instance Prelude.NFData HttpTokensState

instance Prelude.ToByteString HttpTokensState

instance Prelude.ToQuery HttpTokensState

instance Prelude.ToHeader HttpTokensState

instance Prelude.FromXML HttpTokensState where
  parseXML = Prelude.parseXMLText "HttpTokensState"
