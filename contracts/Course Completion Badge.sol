// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CourseCompletionBadge {

    // Structure to hold badge details
    struct Badge {
        string courseName;
        string courseId;
        uint256 completionDate;
        address recipient;
        address issuer;
    }

    // Mapping from recipient's address to their badges
    mapping(address => Badge[]) public badges;

    // Event to log the issuance of a badge
    event BadgeIssued(
        address indexed recipient,
        string courseName,
        string courseId,
        uint256 completionDate
    );

    // Function to issue a new badge
    function issueBadge(
        address _recipient,
        string memory _courseName,
        string memory _courseId
    ) public {
        // Create a new badge
        Badge memory newBadge = Badge({
            courseName: _courseName,
            courseId: _courseId,
            completionDate: block.timestamp,
            recipient: _recipient,
            issuer: msg.sender
        });

        // Add the badge to the recipient's list
        badges[_recipient].push(newBadge);

        // Emit an event for the issuance
        emit BadgeIssued(_recipient, _courseName, _courseId, block.timestamp);
    }

    // Function to retrieve all badges for a specific recipient
    function getBadges(address _recipient) public view returns (Badge[] memory) {
        return badges[_recipient];
    }
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CourseCompletionBadge {

    // Structure to hold badge details
    struct Badge {
        string courseName;
        string courseId;
        uint256 completionDate;
        address recipient;
        address issuer;
    }

    // Mapping from recipient's address to their badges
    mapping(address => Badge[]) public badges;

    // Event to log the issuance of a badge
    event BadgeIssued(
        address indexed recipient,
        string courseName,
        string courseId,
        uint256 completionDate
    );

    // Function to issue a new badge
    function issueBadge(
        address _recipient,
        string memory _courseName,
        string memory _courseId
    ) public {
        // Create a new badge
        Badge memory newBadge = Badge({
            courseName: _courseName,
            courseId: _courseId,
            completionDate: block.timestamp,
            recipient: _recipient,
            issuer: msg.sender
        });

        // Add the badge to the recipient's list
        badges[_recipient].push(newBadge);

        // Emit an event for the issuance
        emit BadgeIssued(_recipient, _courseName, _courseId, block.timestamp);
    }

    // Function to retrieve all badges for a specific recipient
    function getBadges(address _recipient) public view returns (Badge[] memory) {
        return badges[_recipient];
    }
}

