{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.GetObjectInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata about an object.
module Network.AWS.CloudDirectory.GetObjectInformation
  ( -- * Creating a Request
    getObjectInformation,
    GetObjectInformation,

    -- * Request Lenses
    goiConsistencyLevel,
    goiDirectoryARN,
    goiObjectReference,

    -- * Destructuring the Response
    getObjectInformationResponse,
    GetObjectInformationResponse,

    -- * Response Lenses
    goirrsSchemaFacets,
    goirrsObjectIdentifier,
    goirrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getObjectInformation' smart constructor.
data GetObjectInformation = GetObjectInformation'
  { _goiConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _goiDirectoryARN :: !Text,
    _goiObjectReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObjectInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goiConsistencyLevel' - The consistency level at which to retrieve the object information.
--
-- * 'goiDirectoryARN' - The ARN of the directory being retrieved.
--
-- * 'goiObjectReference' - A reference to the object.
getObjectInformation ::
  -- | 'goiDirectoryARN'
  Text ->
  -- | 'goiObjectReference'
  ObjectReference ->
  GetObjectInformation
getObjectInformation pDirectoryARN_ pObjectReference_ =
  GetObjectInformation'
    { _goiConsistencyLevel =
        Nothing,
      _goiDirectoryARN = pDirectoryARN_,
      _goiObjectReference = pObjectReference_
    }

-- | The consistency level at which to retrieve the object information.
goiConsistencyLevel :: Lens' GetObjectInformation (Maybe ConsistencyLevel)
goiConsistencyLevel = lens _goiConsistencyLevel (\s a -> s {_goiConsistencyLevel = a})

-- | The ARN of the directory being retrieved.
goiDirectoryARN :: Lens' GetObjectInformation Text
goiDirectoryARN = lens _goiDirectoryARN (\s a -> s {_goiDirectoryARN = a})

-- | A reference to the object.
goiObjectReference :: Lens' GetObjectInformation ObjectReference
goiObjectReference = lens _goiObjectReference (\s a -> s {_goiObjectReference = a})

instance AWSRequest GetObjectInformation where
  type
    Rs GetObjectInformation =
      GetObjectInformationResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          GetObjectInformationResponse'
            <$> (x .?> "SchemaFacets" .!@ mempty)
            <*> (x .?> "ObjectIdentifier")
            <*> (pure (fromEnum s))
      )

instance Hashable GetObjectInformation

instance NFData GetObjectInformation

instance ToHeaders GetObjectInformation where
  toHeaders GetObjectInformation' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _goiConsistencyLevel,
        "x-amz-data-partition" =# _goiDirectoryARN
      ]

instance ToJSON GetObjectInformation where
  toJSON GetObjectInformation' {..} =
    object
      ( catMaybes
          [Just ("ObjectReference" .= _goiObjectReference)]
      )

instance ToPath GetObjectInformation where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/information"

instance ToQuery GetObjectInformation where
  toQuery = const mempty

-- | /See:/ 'getObjectInformationResponse' smart constructor.
data GetObjectInformationResponse = GetObjectInformationResponse'
  { _goirrsSchemaFacets ::
      !( Maybe
           [SchemaFacet]
       ),
    _goirrsObjectIdentifier ::
      !(Maybe Text),
    _goirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetObjectInformationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goirrsSchemaFacets' - The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See 'GetAppliedSchemaVersion' for details.
--
-- * 'goirrsObjectIdentifier' - The @ObjectIdentifier@ of the specified object.
--
-- * 'goirrsResponseStatus' - -- | The response status code.
getObjectInformationResponse ::
  -- | 'goirrsResponseStatus'
  Int ->
  GetObjectInformationResponse
getObjectInformationResponse pResponseStatus_ =
  GetObjectInformationResponse'
    { _goirrsSchemaFacets =
        Nothing,
      _goirrsObjectIdentifier = Nothing,
      _goirrsResponseStatus = pResponseStatus_
    }

-- | The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See 'GetAppliedSchemaVersion' for details.
goirrsSchemaFacets :: Lens' GetObjectInformationResponse [SchemaFacet]
goirrsSchemaFacets = lens _goirrsSchemaFacets (\s a -> s {_goirrsSchemaFacets = a}) . _Default . _Coerce

-- | The @ObjectIdentifier@ of the specified object.
goirrsObjectIdentifier :: Lens' GetObjectInformationResponse (Maybe Text)
goirrsObjectIdentifier = lens _goirrsObjectIdentifier (\s a -> s {_goirrsObjectIdentifier = a})

-- | -- | The response status code.
goirrsResponseStatus :: Lens' GetObjectInformationResponse Int
goirrsResponseStatus = lens _goirrsResponseStatus (\s a -> s {_goirrsResponseStatus = a})

instance NFData GetObjectInformationResponse
