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
-- Module      : Network.AWS.SageMaker.Types.EndpointSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EndpointSortKey
  ( EndpointSortKey
      ( ..,
        EndpointSortKeyCreationTime,
        EndpointSortKeyName,
        EndpointSortKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndpointSortKey = EndpointSortKey'
  { fromEndpointSortKey ::
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

pattern EndpointSortKeyCreationTime :: EndpointSortKey
pattern EndpointSortKeyCreationTime = EndpointSortKey' "CreationTime"

pattern EndpointSortKeyName :: EndpointSortKey
pattern EndpointSortKeyName = EndpointSortKey' "Name"

pattern EndpointSortKeyStatus' :: EndpointSortKey
pattern EndpointSortKeyStatus' = EndpointSortKey' "Status"

{-# COMPLETE
  EndpointSortKeyCreationTime,
  EndpointSortKeyName,
  EndpointSortKeyStatus',
  EndpointSortKey'
  #-}

instance Prelude.FromText EndpointSortKey where
  parser = EndpointSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndpointSortKey where
  toText (EndpointSortKey' x) = x

instance Prelude.Hashable EndpointSortKey

instance Prelude.NFData EndpointSortKey

instance Prelude.ToByteString EndpointSortKey

instance Prelude.ToQuery EndpointSortKey

instance Prelude.ToHeader EndpointSortKey

instance Prelude.ToJSON EndpointSortKey where
  toJSON = Prelude.toJSONText
