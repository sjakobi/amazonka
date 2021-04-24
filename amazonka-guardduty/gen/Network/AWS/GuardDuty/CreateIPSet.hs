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
-- Module      : Network.AWS.GuardDuty.CreateIPSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with AWS infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the administrator account can use this operation.
module Network.AWS.GuardDuty.CreateIPSet
  ( -- * Creating a Request
    createIPSet,
    CreateIPSet,

    -- * Request Lenses
    cisTags,
    cisClientToken,
    cisDetectorId,
    cisName,
    cisFormat,
    cisLocation,
    cisActivate,

    -- * Destructuring the Response
    createIPSetResponse,
    CreateIPSetResponse,

    -- * Response Lenses
    cisrrsResponseStatus,
    cisrrsIPSetId,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createIPSet' smart constructor.
data CreateIPSet = CreateIPSet'
  { _cisTags ::
      !(Maybe (Map Text Text)),
    _cisClientToken :: !(Maybe Text),
    _cisDetectorId :: !Text,
    _cisName :: !Text,
    _cisFormat :: !IPSetFormat,
    _cisLocation :: !Text,
    _cisActivate :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateIPSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cisTags' - The tags to be added to a new IP set resource.
--
-- * 'cisClientToken' - The idempotency token for the create request.
--
-- * 'cisDetectorId' - The unique ID of the detector of the GuardDuty account that you want to create an IPSet for.
--
-- * 'cisName' - The user-friendly name to identify the IPSet. Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).
--
-- * 'cisFormat' - The format of the file that contains the IPSet.
--
-- * 'cisLocation' - The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
--
-- * 'cisActivate' - A Boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.
createIPSet ::
  -- | 'cisDetectorId'
  Text ->
  -- | 'cisName'
  Text ->
  -- | 'cisFormat'
  IPSetFormat ->
  -- | 'cisLocation'
  Text ->
  -- | 'cisActivate'
  Bool ->
  CreateIPSet
createIPSet
  pDetectorId_
  pName_
  pFormat_
  pLocation_
  pActivate_ =
    CreateIPSet'
      { _cisTags = Nothing,
        _cisClientToken = Nothing,
        _cisDetectorId = pDetectorId_,
        _cisName = pName_,
        _cisFormat = pFormat_,
        _cisLocation = pLocation_,
        _cisActivate = pActivate_
      }

-- | The tags to be added to a new IP set resource.
cisTags :: Lens' CreateIPSet (HashMap Text Text)
cisTags = lens _cisTags (\s a -> s {_cisTags = a}) . _Default . _Map

-- | The idempotency token for the create request.
cisClientToken :: Lens' CreateIPSet (Maybe Text)
cisClientToken = lens _cisClientToken (\s a -> s {_cisClientToken = a})

-- | The unique ID of the detector of the GuardDuty account that you want to create an IPSet for.
cisDetectorId :: Lens' CreateIPSet Text
cisDetectorId = lens _cisDetectorId (\s a -> s {_cisDetectorId = a})

-- | The user-friendly name to identify the IPSet. Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).
cisName :: Lens' CreateIPSet Text
cisName = lens _cisName (\s a -> s {_cisName = a})

-- | The format of the file that contains the IPSet.
cisFormat :: Lens' CreateIPSet IPSetFormat
cisFormat = lens _cisFormat (\s a -> s {_cisFormat = a})

-- | The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
cisLocation :: Lens' CreateIPSet Text
cisLocation = lens _cisLocation (\s a -> s {_cisLocation = a})

-- | A Boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.
cisActivate :: Lens' CreateIPSet Bool
cisActivate = lens _cisActivate (\s a -> s {_cisActivate = a})

instance AWSRequest CreateIPSet where
  type Rs CreateIPSet = CreateIPSetResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          CreateIPSetResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "ipSetId")
      )

instance Hashable CreateIPSet

instance NFData CreateIPSet

instance ToHeaders CreateIPSet where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateIPSet where
  toJSON CreateIPSet' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _cisTags,
            ("clientToken" .=) <$> _cisClientToken,
            Just ("name" .= _cisName),
            Just ("format" .= _cisFormat),
            Just ("location" .= _cisLocation),
            Just ("activate" .= _cisActivate)
          ]
      )

instance ToPath CreateIPSet where
  toPath CreateIPSet' {..} =
    mconcat
      ["/detector/", toBS _cisDetectorId, "/ipset"]

instance ToQuery CreateIPSet where
  toQuery = const mempty

-- | /See:/ 'createIPSetResponse' smart constructor.
data CreateIPSetResponse = CreateIPSetResponse'
  { _cisrrsResponseStatus ::
      !Int,
    _cisrrsIPSetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateIPSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cisrrsResponseStatus' - -- | The response status code.
--
-- * 'cisrrsIPSetId' - The ID of the IPSet resource.
createIPSetResponse ::
  -- | 'cisrrsResponseStatus'
  Int ->
  -- | 'cisrrsIPSetId'
  Text ->
  CreateIPSetResponse
createIPSetResponse pResponseStatus_ pIPSetId_ =
  CreateIPSetResponse'
    { _cisrrsResponseStatus =
        pResponseStatus_,
      _cisrrsIPSetId = pIPSetId_
    }

-- | -- | The response status code.
cisrrsResponseStatus :: Lens' CreateIPSetResponse Int
cisrrsResponseStatus = lens _cisrrsResponseStatus (\s a -> s {_cisrrsResponseStatus = a})

-- | The ID of the IPSet resource.
cisrrsIPSetId :: Lens' CreateIPSetResponse Text
cisrrsIPSetId = lens _cisrrsIPSetId (\s a -> s {_cisrrsIPSetId = a})

instance NFData CreateIPSetResponse
