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
-- Module      : Network.AWS.WorkMail.DescribeOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides more information regarding a given organization based on its identifier.
module Network.AWS.WorkMail.DescribeOrganization
  ( -- * Creating a Request
    describeOrganization,
    DescribeOrganization,

    -- * Request Lenses
    doOrganizationId,

    -- * Destructuring the Response
    describeOrganizationResponse,
    DescribeOrganizationResponse,

    -- * Response Lenses
    dororsOrganizationId,
    dororsAlias,
    dororsARN,
    dororsDefaultMailDomain,
    dororsState,
    dororsDirectoryId,
    dororsDirectoryType,
    dororsCompletedDate,
    dororsErrorMessage,
    dororsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'describeOrganization' smart constructor.
newtype DescribeOrganization = DescribeOrganization'
  { _doOrganizationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doOrganizationId' - The identifier for the organization to be described.
describeOrganization ::
  -- | 'doOrganizationId'
  Text ->
  DescribeOrganization
describeOrganization pOrganizationId_ =
  DescribeOrganization'
    { _doOrganizationId =
        pOrganizationId_
    }

-- | The identifier for the organization to be described.
doOrganizationId :: Lens' DescribeOrganization Text
doOrganizationId = lens _doOrganizationId (\s a -> s {_doOrganizationId = a})

instance AWSRequest DescribeOrganization where
  type
    Rs DescribeOrganization =
      DescribeOrganizationResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          DescribeOrganizationResponse'
            <$> (x .?> "OrganizationId")
            <*> (x .?> "Alias")
            <*> (x .?> "ARN")
            <*> (x .?> "DefaultMailDomain")
            <*> (x .?> "State")
            <*> (x .?> "DirectoryId")
            <*> (x .?> "DirectoryType")
            <*> (x .?> "CompletedDate")
            <*> (x .?> "ErrorMessage")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeOrganization

instance NFData DescribeOrganization

instance ToHeaders DescribeOrganization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.DescribeOrganization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeOrganization where
  toJSON DescribeOrganization' {..} =
    object
      ( catMaybes
          [Just ("OrganizationId" .= _doOrganizationId)]
      )

instance ToPath DescribeOrganization where
  toPath = const "/"

instance ToQuery DescribeOrganization where
  toQuery = const mempty

-- | /See:/ 'describeOrganizationResponse' smart constructor.
data DescribeOrganizationResponse = DescribeOrganizationResponse'
  { _dororsOrganizationId ::
      !(Maybe Text),
    _dororsAlias ::
      !(Maybe Text),
    _dororsARN ::
      !(Maybe Text),
    _dororsDefaultMailDomain ::
      !(Maybe Text),
    _dororsState ::
      !(Maybe Text),
    _dororsDirectoryId ::
      !(Maybe Text),
    _dororsDirectoryType ::
      !(Maybe Text),
    _dororsCompletedDate ::
      !( Maybe
           POSIX
       ),
    _dororsErrorMessage ::
      !(Maybe Text),
    _dororsResponseStatus ::
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

-- | Creates a value of 'DescribeOrganizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dororsOrganizationId' - The identifier of an organization.
--
-- * 'dororsAlias' - The alias for an organization.
--
-- * 'dororsARN' - The Amazon Resource Name (ARN) of the organization.
--
-- * 'dororsDefaultMailDomain' - The default mail domain associated with the organization.
--
-- * 'dororsState' - The state of an organization.
--
-- * 'dororsDirectoryId' - The identifier for the directory associated with an Amazon WorkMail organization.
--
-- * 'dororsDirectoryType' - The type of directory associated with the WorkMail organization.
--
-- * 'dororsCompletedDate' - The date at which the organization became usable in the WorkMail context, in UNIX epoch time format.
--
-- * 'dororsErrorMessage' - (Optional) The error message indicating if unexpected behavior was encountered with regards to the organization.
--
-- * 'dororsResponseStatus' - -- | The response status code.
describeOrganizationResponse ::
  -- | 'dororsResponseStatus'
  Int ->
  DescribeOrganizationResponse
describeOrganizationResponse pResponseStatus_ =
  DescribeOrganizationResponse'
    { _dororsOrganizationId =
        Nothing,
      _dororsAlias = Nothing,
      _dororsARN = Nothing,
      _dororsDefaultMailDomain = Nothing,
      _dororsState = Nothing,
      _dororsDirectoryId = Nothing,
      _dororsDirectoryType = Nothing,
      _dororsCompletedDate = Nothing,
      _dororsErrorMessage = Nothing,
      _dororsResponseStatus = pResponseStatus_
    }

-- | The identifier of an organization.
dororsOrganizationId :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsOrganizationId = lens _dororsOrganizationId (\s a -> s {_dororsOrganizationId = a})

-- | The alias for an organization.
dororsAlias :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsAlias = lens _dororsAlias (\s a -> s {_dororsAlias = a})

-- | The Amazon Resource Name (ARN) of the organization.
dororsARN :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsARN = lens _dororsARN (\s a -> s {_dororsARN = a})

-- | The default mail domain associated with the organization.
dororsDefaultMailDomain :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsDefaultMailDomain = lens _dororsDefaultMailDomain (\s a -> s {_dororsDefaultMailDomain = a})

-- | The state of an organization.
dororsState :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsState = lens _dororsState (\s a -> s {_dororsState = a})

-- | The identifier for the directory associated with an Amazon WorkMail organization.
dororsDirectoryId :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsDirectoryId = lens _dororsDirectoryId (\s a -> s {_dororsDirectoryId = a})

-- | The type of directory associated with the WorkMail organization.
dororsDirectoryType :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsDirectoryType = lens _dororsDirectoryType (\s a -> s {_dororsDirectoryType = a})

-- | The date at which the organization became usable in the WorkMail context, in UNIX epoch time format.
dororsCompletedDate :: Lens' DescribeOrganizationResponse (Maybe UTCTime)
dororsCompletedDate = lens _dororsCompletedDate (\s a -> s {_dororsCompletedDate = a}) . mapping _Time

-- | (Optional) The error message indicating if unexpected behavior was encountered with regards to the organization.
dororsErrorMessage :: Lens' DescribeOrganizationResponse (Maybe Text)
dororsErrorMessage = lens _dororsErrorMessage (\s a -> s {_dororsErrorMessage = a})

-- | -- | The response status code.
dororsResponseStatus :: Lens' DescribeOrganizationResponse Int
dororsResponseStatus = lens _dororsResponseStatus (\s a -> s {_dororsResponseStatus = a})

instance NFData DescribeOrganizationResponse
