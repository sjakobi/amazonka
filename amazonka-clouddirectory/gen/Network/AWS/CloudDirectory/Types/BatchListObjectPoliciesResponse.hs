{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListObjectPoliciesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListObjectPoliciesResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'ListObjectPolicies' response operation.
--
--
--
-- /See:/ 'batchListObjectPoliciesResponse' smart constructor.
data BatchListObjectPoliciesResponse = BatchListObjectPoliciesResponse'
  { _batNextToken ::
      !( Maybe
           Text
       ),
    _batAttachedPolicyIds ::
      !( Maybe
           [Text]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchListObjectPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'batNextToken' - The pagination token.
--
-- * 'batAttachedPolicyIds' - A list of policy @ObjectIdentifiers@ , that are attached to the object.
batchListObjectPoliciesResponse ::
  BatchListObjectPoliciesResponse
batchListObjectPoliciesResponse =
  BatchListObjectPoliciesResponse'
    { _batNextToken =
        Nothing,
      _batAttachedPolicyIds = Nothing
    }

-- | The pagination token.
batNextToken :: Lens' BatchListObjectPoliciesResponse (Maybe Text)
batNextToken = lens _batNextToken (\s a -> s {_batNextToken = a})

-- | A list of policy @ObjectIdentifiers@ , that are attached to the object.
batAttachedPolicyIds :: Lens' BatchListObjectPoliciesResponse [Text]
batAttachedPolicyIds = lens _batAttachedPolicyIds (\s a -> s {_batAttachedPolicyIds = a}) . _Default . _Coerce

instance FromJSON BatchListObjectPoliciesResponse where
  parseJSON =
    withObject
      "BatchListObjectPoliciesResponse"
      ( \x ->
          BatchListObjectPoliciesResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "AttachedPolicyIds" .!= mempty)
      )

instance Hashable BatchListObjectPoliciesResponse

instance NFData BatchListObjectPoliciesResponse
