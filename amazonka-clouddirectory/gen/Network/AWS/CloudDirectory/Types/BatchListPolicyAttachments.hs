{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchListPolicyAttachments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListPolicyAttachments where

import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns all of the @ObjectIdentifiers@ to which a given policy is attached inside a 'BatchRead' operation. For more information, see 'ListPolicyAttachments' and 'BatchReadRequest$Operations' .
--
--
--
-- /See:/ 'batchListPolicyAttachments' smart constructor.
data BatchListPolicyAttachments = BatchListPolicyAttachments'
  { _blpaNextToken ::
      !(Maybe Text),
    _blpaMaxResults ::
      !(Maybe Nat),
    _blpaPolicyReference ::
      !ObjectReference
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchListPolicyAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blpaNextToken' - The pagination token.
--
-- * 'blpaMaxResults' - The maximum number of results to retrieve.
--
-- * 'blpaPolicyReference' - The reference that identifies the policy object.
batchListPolicyAttachments ::
  -- | 'blpaPolicyReference'
  ObjectReference ->
  BatchListPolicyAttachments
batchListPolicyAttachments pPolicyReference_ =
  BatchListPolicyAttachments'
    { _blpaNextToken =
        Nothing,
      _blpaMaxResults = Nothing,
      _blpaPolicyReference = pPolicyReference_
    }

-- | The pagination token.
blpaNextToken :: Lens' BatchListPolicyAttachments (Maybe Text)
blpaNextToken = lens _blpaNextToken (\s a -> s {_blpaNextToken = a})

-- | The maximum number of results to retrieve.
blpaMaxResults :: Lens' BatchListPolicyAttachments (Maybe Natural)
blpaMaxResults = lens _blpaMaxResults (\s a -> s {_blpaMaxResults = a}) . mapping _Nat

-- | The reference that identifies the policy object.
blpaPolicyReference :: Lens' BatchListPolicyAttachments ObjectReference
blpaPolicyReference = lens _blpaPolicyReference (\s a -> s {_blpaPolicyReference = a})

instance Hashable BatchListPolicyAttachments

instance NFData BatchListPolicyAttachments

instance ToJSON BatchListPolicyAttachments where
  toJSON BatchListPolicyAttachments' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _blpaNextToken,
            ("MaxResults" .=) <$> _blpaMaxResults,
            Just ("PolicyReference" .= _blpaPolicyReference)
          ]
      )
