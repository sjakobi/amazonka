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
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceFilterName
  ( ServiceFilterName
      ( ..,
        ServiceFilterNameNAMESPACEID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceFilterName = ServiceFilterName'
  { fromServiceFilterName ::
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

pattern ServiceFilterNameNAMESPACEID :: ServiceFilterName
pattern ServiceFilterNameNAMESPACEID = ServiceFilterName' "NAMESPACE_ID"

{-# COMPLETE
  ServiceFilterNameNAMESPACEID,
  ServiceFilterName'
  #-}

instance Prelude.FromText ServiceFilterName where
  parser = ServiceFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceFilterName where
  toText (ServiceFilterName' x) = x

instance Prelude.Hashable ServiceFilterName

instance Prelude.NFData ServiceFilterName

instance Prelude.ToByteString ServiceFilterName

instance Prelude.ToQuery ServiceFilterName

instance Prelude.ToHeader ServiceFilterName

instance Prelude.ToJSON ServiceFilterName where
  toJSON = Prelude.toJSONText
