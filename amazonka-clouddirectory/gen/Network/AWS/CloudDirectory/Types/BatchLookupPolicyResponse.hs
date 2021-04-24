{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchLookupPolicyResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchLookupPolicyResponse where

import Network.AWS.CloudDirectory.Types.PolicyToPath
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a 'LookupPolicy' response operation.
--
--
--
-- /See:/ 'batchLookupPolicyResponse' smart constructor.
data BatchLookupPolicyResponse = BatchLookupPolicyResponse'
  { _blprNextToken ::
      !(Maybe Text),
    _blprPolicyToPathList ::
      !( Maybe
           [PolicyToPath]
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

-- | Creates a value of 'BatchLookupPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blprNextToken' - The pagination token.
--
-- * 'blprPolicyToPathList' - Provides list of path to policies. Policies contain @PolicyId@ , @ObjectIdentifier@ , and @PolicyType@ . For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies> .
batchLookupPolicyResponse ::
  BatchLookupPolicyResponse
batchLookupPolicyResponse =
  BatchLookupPolicyResponse'
    { _blprNextToken =
        Nothing,
      _blprPolicyToPathList = Nothing
    }

-- | The pagination token.
blprNextToken :: Lens' BatchLookupPolicyResponse (Maybe Text)
blprNextToken = lens _blprNextToken (\s a -> s {_blprNextToken = a})

-- | Provides list of path to policies. Policies contain @PolicyId@ , @ObjectIdentifier@ , and @PolicyType@ . For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies> .
blprPolicyToPathList :: Lens' BatchLookupPolicyResponse [PolicyToPath]
blprPolicyToPathList = lens _blprPolicyToPathList (\s a -> s {_blprPolicyToPathList = a}) . _Default . _Coerce

instance FromJSON BatchLookupPolicyResponse where
  parseJSON =
    withObject
      "BatchLookupPolicyResponse"
      ( \x ->
          BatchLookupPolicyResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "PolicyToPathList" .!= mempty)
      )

instance Hashable BatchLookupPolicyResponse

instance NFData BatchLookupPolicyResponse
